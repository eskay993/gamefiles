Script to fix FMVs not playing in Onimusha Warlords by re-encoding the
videos from vc1 to mpgeg4. The script should find your Steam install of
the game automatically.

You know it's working if the first cutscene to play in a new game is the
"CAPCOM Presents" one. If it plays the letter cutrscene first, then it's 
not working.

Tested with GE-Proton9-25.

To use the script:
- Install Onimusha Warlords HD from Steam
- Downlaod this script
- Open a terminal and navigate to where you downloaded the script and run:
```
./onimusha-fmv-fix.sh
```

Or if you're feeling lazy, just install the game in Steam then in a terminal run:

```
curl -s https://raw.githubusercontent.com/eskay993/gamefiles/refs/heads/main/onimusha-warlords-hd/onimusha-fmv-fix.sh | bash
```

You can also pass the location of your install to the script as well
(useful for non Steam installs):

```
./onimusha-fmv-fix.sh "/path/to/onimusha/game"
```