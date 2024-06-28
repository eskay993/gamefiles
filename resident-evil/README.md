Installs the [GOG version of Resident Evil](https://www.gog.com/game/resident_evil) and applies the [Classic REbirth](https://classicrebirth.com/index.php/downloads/resident-evil-classic-rebirth/) patch. This is needed to get FMVs to play, which do not work with the vanilla GOG version. This may be fixed in future either by GOG (unlikely) or an update to Proton/Wine.

This also installs [RE1 Classic REbirth High Quality video pack](https://www.moddb.com/downloads/re1-classic-rebirth-high-quality-video-pack) for 30fps videos upscaled to 640x480.

Note: Installing the REbirth patch overrides the additions that GOG made to the game, so running `dxcfg.exe` and making changes won't do anything. Hopefully in future a mod comes out that incorporates the best of both GOG's fixes and REbirth.


## **Install Guide (Steam Deck)**
1. Switch to Desktop Mode on Steam Deck.

2. Download the English/USA version of Resident Evil offline installer files from your GOG account - [setup_resident_evil_1.0_(72738).exe](https://www.gog.com/downloads/resident_evil/en1installer0) and [setup_resident_evil_1.0_(72738)-1.bin](https://www.gog.com/downloads/resident_evil/en1installer1). You need to be logged-in to your account and own the game for the links to work. 

3. Download the [Unofficial Mediakite 1.01 Patch for USA](https://www.nexusmods.com/residentevil1996/mods/25?tab=files) which allows the REbirth patch to work with the USA version of the game. Do not unzip the file.

4. Download the install script [resident-evil-gog.zip](https://github.com/eskay993/gamefiles/raw/main/resident-evil/resident-evil-gog.zip) from this repo and extract it. Should be a `.yaml` file.

5. Install `Lutris` from the Discover Store.

6. Run `Lutris` and click the + sign to add a game.
   
7. Select `Install from local install script` and point to the yaml file you downloaded in step 4. Then click `Install` and `Install` again on the next screen.

8. Chose where to install the game. The default is fine unless you want to change it. Also click `Create steam shortcut` so the game will be available in your library in Game Mode. Click Continue.
   
9. Click the `...` button under `GOG setup exe for Resident Evil` and select the setup exe file from step 2.

10. Click the `...` button under `Unofficial MediaKite 1.01 patch zip file` and select the zip file you downloaded in step 3.

10. Choose whether or not to enable high quality movies / FMVs. If you are unsure, choose yes.

12. Click `Install` and let it do it's thing. 

13. Done! When you now launch the game you should get the REbirth settings window.

For info on the Classic REbirth patch and the various settings, see [Classic REbirth](https://classicrebirth.com/index.php/downloads/resident-evil-classic-rebirth/).

One note - The default contoller mapping will be off on Steam Deck. You can either remap in Steam's overay, or click remap in the REbirth setting window. I may do a version of the script that auto-fixes this for Steam Deck.

# Credits
- The Classic REbirth team for the awesome [Classic REbirth Patch for Resident Evil](https://classicrebirth.com/index.php/downloads/resident-evil-classic-rebirth/)
- Loboto3 for [RE1 Classic REbirth High Quality video pack](https://www.moddb.com/downloads/re1-classic-rebirth-high-quality-video-pack) 
- Alexkander on NexusMods for the [Unofficial Mediakite 1.01 Patch for USA](https://www.nexusmods.com/residentevil1996/mods/25?tab=files)
- GOG for modernising the game and convincing Capcom to release it :) Chapeau!
