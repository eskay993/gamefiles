# Intro
Updated Lutris installer scripts for the PC-DVD version of Silent Hill 3 based on chrll's original script. The game runs at a near solid 60FPS (even on Steam Deck), and everything should be configured out of the box, including widescreen and controller support.

The following fixes and patches are installed:
- No-DVD patch
- Widescreen Fix by ThirteenAG
- Xinput-Plus controller fix (e.g. for Xbox controllers)
- Audio fixes that correct the pitch of sfx/music (See [Version Differences](#versions))
- Controller mapping applied to match PS2 control scheme
- Various settings tweaks applied for improved performance

#

<a name="versions"></a> 
# Version Differences
There are 2 version of the script, the main difference being which sound patch is installed.<br>

### 1. **silent-hill-3-installer-with-audio-enhancement-pack** ([Install Guide](#eap_guide))<br>
Try this version first. Installs MarioTainaka's [Audio Enhanced Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack) which  fixes the pitch and uses uncompressed audio files for better sound quality.
Relaoded-II Mod Loader is also installed to automatically load the audio pack.

> As of writing (14-Sep-2022), this version works fine however if Reloaded or the Audio Enhancement Pack introduce something unexpected in a future update, it may break the script.

<br>

### 2. **silent-hill-3-installer-with-sound-fixer** ([Install Guide](#sf_guide))<br>
Installs Psycho-A's [Silent Hill 3 PC Sound Fix](https://community.pcgamingwiki.com/files/file/1867-silent-hill-3-pc-sound-fix/) which directly patches the sound files to fix the pitch, however does not alter the audio compression. Should still lbe good enough for most people, so if the other version does not work for you, try this one.

#

# Install Guides

<a name="eap_guide"></a> 
## Enhanced Audio Pack Installer Guide

Try this version first. If it doesn't work, try the Sound Fixer version below. See [Version Differences](#versions)

1. Download [silent-hill-3-installer-with-audio-enhancement-pack.zip](https://github.com/eskay993/gamefiles/raw/main/silent-hill-3/silent-hill-3-installer-with-audio-enhancement-pack.zip) version of the install script from this repo.
2. Follow [Betwixt-Two-Ferns's guide on r/SteamDeck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) to  extract the game setup files from your DVD or ISO.
3. Download `Silent Hill 3 No-DVD Patch` and extract it. This allows the game to run without the DVD inserted. You will have to track this down yourself. Google may help...
4. Download [Silent Hill 3 Audio Enhancement Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack) from Mod DB. Don't extract it. Just leave as is.
5. Run Lutris and click the `+` sign to add a game.
6. Select `Install from local install script` and point to the yaml script from Step 1.
7. Click `Install` on the next screen.
8. Chose where to install the game, and check any boxes on the left if you want shortcuts added to your Desktop/Steam. Click `Install`.
8. On the next screen, click `Browse` under `sh3.exe` and select you patched version of `sh3.exe` from the `No-DVD Patch` that you downloaded in Step 3.
8. Click `Browse` under `Silent Hill 3 Audio Enhancement Pack` and point to the file you downloaded in Step 4.
8. Click `Continue` and wait for the various files to download
9. Select your resolution when prompted and click `Continue`
10. Click `Browse` and point to the directory of the game's setup files that you extracted in Step 2.
11. Let the installer do it's thing. It appear t hang for a bit... just leave it run.
12. Towards the end, `Reloaded-II Mod Loader` will launch and start downloading updates. **IMPORTANT: Let it finish it's updates!**
> Note: Very occasionally, the updates hang or Reloaded crashes with an error. Just quit everything and start again if this happens. 
13. Once the updates finish, click `Skip Tutorial` and just close `Reloaded-II`. Wait for the installer to finish up.
11. Done! Run the game and enjoy!
> Note: Controller must be on before running the game for it to be recognised.

<br>

<a name="sf_guide"></a> 
## Sound Fixer Patch Installer Guide

Try this version if the Enhanced Audio Pack version above does not work. See [Version Differences](#versions)

1. Download [silent-hill-3-installer-with-sound-fixer.zip](https://github.com/eskay993/gamefiles/raw/main/silent-hill-3/silent-hill-3-installer-with-sound-fixer.zip) from this repo and extract it.
2. Follow [Betwixt-Two-Ferns's guide on r/SteamDeck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) to  extract the game setup files from your DVD or ISO.
3. Download `Silent Hill 3 No-DVD Patch` and extract it. This allows the game to run without the DVD inserted. You will have to track this down yourself. Google may help...
4. Run Lutris and click the `+` sign to add a game.
5. Select `Install from local install script` and point to the extracted yaml script from Step 1.
6. Click `Install` on the next screen.
7. Chose where to install the game, tick any boxes on the left if you want shortcuts added to your Desktop/Steam, and click `Install`.
8. On the next screen, click `Browse` under `sh3.exe` and select the patched version of `sh3.exe` extracted from the `No-DVD Patch` that you downloaded in Step 3.
9. Click `Continue` and wait for the various files to download.
10. Select your resolution when prompted and click `Continue`.
11. Click `Browse` and point to the directory of the game's setup files that you extracted in Step 2.
12. Let the installer do it's thing. It may appear to hang for a bit... just leave it to finish.
13. Done!  Run the game and enjoy!
> Note: Controller must be on before running the game for it to be recognised.

#

# Credits
- ThirteenAG for [Silent Hill 3 Widescreen Fix ](https://thirteenag.github.io/wfp#sh3)
- Psycho-A for [Silent Hill 3 PC Sound Fix](https://community.pcgamingwiki.com/files/file/1867-silent-hill-3-pc-sound-fix/)
- MarioTainaka for [Silent Hill 3 Audio Enhancement Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack)
- 0dd14 for [XInput-Plus](https://sites.google.com/site/0dd14lab/xinput-plus)
- chrll for the original [Silent Hill 3 Lutris script](https://lutr.is/games/silent-hill-3/) that this build off
- Betwixt-Two-Ferns for [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) which this script essentially automates.

<br>

# Addiitonal Resources
- [PCGamingWiki / Silent Hill 3](https://www.pcgamingwiki.com/wiki/Silent_Hill_3)
- [Silent Hill 2 & 3 - Using fix *.dlls other than "dinput8.dll" crashes at launch](https://github.com/ThirteenAG/WidescreenFixesPack/issues/264)
