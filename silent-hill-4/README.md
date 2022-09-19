
Updated Lutris installer script for the GOG version of Silent Hill 4 based on TimeFreeze's original Lutris script and is inspired by Betwixt-Two-Ferns's awesome [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/). 

The script installs the following:
- GOG version of Silent Hill 4
- Optionally restores missing 'hauntings' from PS2 version
- Makes a few setting tweaks including closer matching PS2 colours

> Note: Must use the GOG version of the game. The 'haunting' retore patch is specifically designed for it.

'Hauntings' were available on the PS2 version, but were cut from the PC version. For more info on what they are, check out [Silent Hill Memories - Hauntings](https://www.silenthillmemories.net/sh4/hauntings_en.htm).

The GOG version already includes widescreen and controller support, so no need to add any additional patches to fix those.

The game runs at max 30FPS. There is a 60FPS patch available, but it's break certain parts of the game so is not included.

<br>

# Install Guide

On Steam Deck, follow the below steps in Desktop Mode.

1. Download [silent-hill-4-lutris-install-script.zip](https://github.com/eskay993/gamefiles/raw/main/silent-hill-4/silent-hill-4-lutris-install-script.zip) from this repo and extract it.
1. Downlaad the game install files from GOG. Check [Betwixt-Two-Ferns's guide on r/SteamDeck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) for info.
2. Run Lutris and click the `+` sign to add a game.
3. Select `Install from local install script` and point to the extracted yaml script from Step 1.
4. Click `Install` on the next screen.
5. Chose where to install the game, tick any boxes on the left if you want shortcuts added to your Desktop/Steam, and click `Install`.
6. On the next screen, click `Browse` under `GOG setup executable` and select the setup exe from Step 2.
7. Click `Continue` and wait for the various files to download.
8. Select your resolution from the drop-down and click `Continue`.
8. Select whether to install the `hauntings restore patch` from the drop-down and click `Continue`.
10. Let the installer do it's thing. It may appear to hang for a bit... just leave it to finish.
11. Done!  Run the game and enjoy!

Note 1: Controller must be on before running the game for it to be recognised.

Note 2: Controller works out of the box on desktop. It does not on Steam Deck. Not all the buttons are mapped correctly. You have two options:

1. Remap the controls on Steam Deck as follows to match PS2 controls:
```
Start -> Esc 
Select -> T 
DPAD -> Arrow keys 
R2 -> B 
L2 -> TAB 
R3 -> TAB 
L3 -> Nothing
Everything else default controller buttons.
```

2. Use `Betwixt-Two-Ferns` Community Profile. Search for `SILENT HILL 4 REDDIT` on your Steam Deck

<br>

# Credits
-  ThirteenAG for [Ultimate-ASI-Loader](https://github.com/ThirteenAG/Ultimate-ASI-Loader/)
-  HunterStanton for [SilentHill4Randomizer](https://github.com/HunterStanton/SilentHill4Randomizer)
- TimeFreeze for the original [Silent Hill 4 Lutris script](https://lutris.net/games/silent-hill-4-the-room/), which this script expands upon.
- Betwixt-Two-Ferns for [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/), which this script essentially automates.

<br>

# Addiitonal Resources
- [Silent Hill 4: The Room on GOG](https://www.gog.com/game/silent_hill_4_the_room)
- [PCGamingWiki / Silent Hill 4: The Room](https://www.pcgamingwiki.com/wiki/Silent_Hill_4:_The_Room)
- [Silent Hill Memories - Hauntings](https://www.silenthillmemories.net/sh4/hauntings_en.htm)
- [Lutris / Writing Installers](https://github.com/lutris/lutris/blob/master/docs/installers.rst)
