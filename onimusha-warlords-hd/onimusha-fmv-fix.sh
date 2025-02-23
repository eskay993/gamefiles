#!/bin/bash

# Script to fix FMVs not playing in Onimusha Warlords by re-encoding the
# videos from vc1 to mpgeg4. The script should find your Steam install of
# the game automatically.
#
# You know it's working if the first cutscene to play in a new game is the
# "CAPCOM Presents" one. If it plays the letter cutrscene first, then it's 
# not working.
#
# Tested with GE-Proton9-25.
#
# To use the script:
# - Install Onimusha Warlords HD from Steam
# - Downlaod this script
# - Open a terminal and navigate to where you downloaded the script and run:
# ./onimusha-fmv-fix.sh
#
# Or if you're feeling lazy, just install the game in Steam then in a terminal run:
# curl -s https://raw.githubusercontent.com/eskay993/gamefiles/refs/heads/main/onimusha-warlords-hd/onimusha-fmv-fix.sh | bash
#
# You can also pass the location of your install to the script as well
# (useful for non Steam installs):
# ./onimusha-fmv-fix.sh "/path/to/onimusha/game"


STEAM_ROOT="$HOME/.steam/root"
APP_ID="761600"

function steam_library() {
   path=$(
   awk -v app_id="$APP_ID" '
     /^[[:space:]]*"[0-9]+"$/ {
       in_block = 1;
       block = $0;
       next;
     }
     in_block {
       block = block "\n" $0;
       if ($0 ~ /^\s*}/) {
         in_block = 0;
         if (block ~ app_id) {
           match(block, /"path"\s+"([^"]+)"/, arr);
           print arr[1];
           exit;
         }
       }
     }
   ' "${STEAM_ROOT}/steamapps/libraryfolders.vdf"
  )

  echo "$path"
}


if [ -n "$1" ]; then
   install_dir="$1"
else
   install_dir="$(steam_library)/steamapps/common/Onimusha"
fi

if ! [ -d ${install_dir} ]; then
   echo "Error: Could not find install dir: '${install_dir}'"
   exit 1
fi

pushd "${install_dir}"/IMAGE/MOVIE >/dev/null
[ -d BACKUP ] || mkdir -p BACKUP

for fmv in *.wmv; do
   codec="$(ffprobe -v error -select_streams v:0 -show_entries stream=codec_name -of default=noprint_wrappers=1:nokey=1 ${fmv})"
   if [[ "${codec}" == "mpeg4" ]]; then
      echo "Skipping ${fmv}: Video already encoded as mpeg4."
      continue
   fi
   echo "Transcoding ${fmv}..."
   ffmpeg  -v quiet -stats -i ${fmv} -filter:v fps=30 -c:v mpeg4 -b:v 20M -map 0:v -map 0:a ${fmv:0:-4}.mp4
   mv -v ${fmv} BACKUP/
   mv -v ${fmv:0:-4}.mp4  ${fmv}
done

popd >/dev/null

echo "Done!"
