# Intro
Updated Lutris installer script for the PC-DVD version of Silent Hill 3 based on chrll's original Lutris script and is inspired by Betwixt-Two-Ferns's awesome [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/). The game runs at a near solid 60FPS (even on Steam Deck), and everything should be configured out of the box, including widescreen, audio fixes and controller support.

The script installs the following:
- No-DVD patch
- Widescreen Fix by ThirteenAG
- Xinput-Plus controller fix (e.g. for Xbox controllers)
- Audio fixes that correct the pitch of sfx/music
- Controller mapping applied to match PS2 control scheme
- Various settings tweaks applied for improved performance

<br>

# Install Guide

1. Download [silent-hill-3-lutris-install-script.zip](https://github.com/eskay993/gamefiles/raw/main/silent-hill-3/silent-hill-3-lutris-install-script.zip) from this repo and extract it.
1. Follow [Betwixt-Two-Ferns's guide on r/SteamDeck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) to  extract the game setup files from your DVD or ISO.
2. Download `Silent Hill 3 No-DVD Patch` and extract it. This allows the game to run without the DVD inserted. You will have to track this down yourself. Google may help...
2. Run Lutris and click the `+` sign to add a game.
3. Select `Install from local install script` and point to the extracted yaml script from Step 1.
4. Click `Install` on the next screen.
5. Chose where to install the game, tick any boxes on the left if you want shortcuts added to your Desktop/Steam, and click `Install`.
6. On the next screen, click `Browse` under `sh3.exe` and select the patched version of `sh3.exe` extracted from the `No-DVD Patch` that you downloaded in Step 3.
7. Click `Continue` and wait for the various files to download.
8. Select your resolution when prompted and click `Continue`.
9. Click `Browse` and point to the directory of the game's setup files that you extracted in Step 2.
10. Let the installer do it's thing. It may appear to hang for a bit... just leave it to finish.
11. Done!  Run the game and enjoy!
> Note: Controller must be on before running the game for it to be recognised.

<br>

# Credits
- ThirteenAG for [Silent Hill 3 Widescreen Fix ](https://thirteenag.github.io/wfp#sh3)
- Psycho-A for [Silent Hill 3 PC Sound Fix](https://community.pcgamingwiki.com/files/file/1867-silent-hill-3-pc-sound-fix/)
- 0dd14 for [XInput-PLus](https://sites.google.com/site/0dd14lab/xinput-plus)
- chrll for the original [Silent Hill 3 Lutris script](https://lutr.is/games/silent-hill-3/), which this script expands upon.
- Betwixt-Two-Ferns for [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/), which this script essentially automates.

<br>

# Addiitonal Resources
- [PCGamingWiki / Silent Hill 3](https://www.pcgamingwiki.com/wiki/Silent_Hill_3)
- [Silent Hill 2 & 3 - Using fix *.dlls other than "dinput8.dll" crashes at launch](https://github.com/ThirteenAG/WidescreenFixesPack/issues/264)
