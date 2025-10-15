<h1>SP Football Life 2026</h1>
<h3>Steam Deck / Linux Installer</h3>

- [Install Guide](#install-guide)
- [Useful info](#useful-info)
  - [How to install updates](#how-to-install-updates)
  - [How to backup / restore your game saves](#how-to-backup--restore-your-game-saves)
  - [How to run `Settings` or `Switcher` tool](#how-to-run-settings-or-switcher-tool)
  - [How to add SPFL to Steam Library / Game Mode](#how-to-add-spfl-to-steam-library--game-mode)
  - [How to clear your Lutris cache](#how-to-clear-your-lutris-cache)
- [Troubleshooting](#troubleshooting)
    - [I've getting errors during the install... help!](#ive-getting-errors-during-the-install-help)
    - [I'm getting a black screen with audio on Steam Deck](#black-screen-with-audio-on-steam-deck)
    - [My controller is not being detected](#my-controller-is-not-being-detected)
    - [The gameplay is flickering or missing texture during a match](#the-gameplay-is-flickering-or-missing-texture-during-a-match)
    - [I'm still seeing black borders even with the aspect ratio patch](#im-still-seeing-black-borders-even-with-the-aspect-ratio-patch)
- [Credits](#credits)
- [Additional Resources](#additional-resources)



## Intro
Lutris script to install SP Football Life 2026 by [SmokePatch](https://www.pessmokepatch.com/). You can read about the game on their website, as well as download the game installer, updates and mods.

To get the game, go to [SP Football Life 2026](https://www.pessmokepatch.com/2025/10/spfl26.html) and scroll down to `Download Links` and download both the base game and latest update.


# Install Guide
This guide assumes you're installing on a Steam Deck. The steps are the same for a regular Linux desktop, with the possible exception of where to get Lutris, which may differ for your particular distro of choice.

1. Important: Make sure Lutris is installed and fully updated on your Steam Deck. You need at least version `0.5.14`. You can install it and update it from the `Discover` app. If you're not sure how to install it, then follow the first 1 min of [this guide](https://www.youtube.com/watch?v=537bpLvPu64). Ignore the rest of the video.

2. Follow steps 1 and 2 from [Tutorial - Install SP Football Life](https://www.pessmokepatch.com/2022/10/installation.html) to download and extract the game from the [SmokePatch](https://www.pessmokepatch.com/) website. Only do steps 1 and 2, then come back here after extracting the installer files.

3. Download [sp-football-life-2026-win.zip](https://github.com/eskay993/gamefiles/raw/main/sp-football-life-2026/sp-football-life-2026-win.zip) from this repo and extract it.

4. Run Lutris and click the `+` sign to add a game.

5. Select `Install from local install script` and point to the extracted yaml script from step 1. Click `Install`.

6. On the next screen. choose where to install the game. On Steam Deck, Lutris by default will install the game to `/home/deck/Games/sp-football-life-2026`. Also tick `Create steam shortcut` so the game gets added to your Steam library. Click `Install` 

7. On the next screen, click `Browse` under `SPFL26_setup.exe` and select the `SPFL26_setup.exe` from the files you extracted step 2. Click `Continue` and wait for the various files to download.

8. Click `Continue` to begin the install process. You may get a popup asking you to install mono. Just click cancel if you do. 

9. After some requirements are installed, the SPFL setup window should appear. Just keep clicking `Next` and leave everything as default. The game should start installing. Click `Exit` when it's done.

10. Next, the `Settings` window *should* open. Ensure the following:
	- "`Full Screen`" is selected. If it's greyed out, select the highest resolution available in the dropdown and you should then be able to select Full Screen.
	- If you're using a PS controller, make sure to click on the Controllers tab and select `DirectInput`
	
13. The new `Switcher` window should now launch. This new version of the tool does 2 things:
	- Allows you to chose how you want the gameplay experience to be. You can choose SmokePatch's tweaked gameplay, or go for something closer to vanilla PES 2021. You can change this later at any time so experiment!
	
	- Allows you to change the visual controller button prompts you see in-game. If you are playing with a PS controller, chose one of the PS options, otherwise choose Xbox.

Choose what you want, click `Apply` then `Close`

14. Now click `Close` in Lutris and the game should now appear in .
15. The final step! Please read the **important** notes below. And check [Troubleshooting](#troubleshooting) if you have any issues

> [!IMPORTANT]
> On Steam Deck, you should play the game in Game Mode, not Desktop Mode. In Desktop Mode, the controller will not be recognised. If you selected `Create steam shortcut` in step 6 above, then the game should be in your library and you can launch it from Game Mode. If you  did not, or the game is not appearing in your Steam library, then follow [these steps](#how-to-add-spfl-to-steam-library--game-mode) to add it. 

> [!IMPORTANT]
> On Steam Deck, when playing in Game Mode and adding the game through Lutris, you may encouter a black screen issue with audio. See [Black screen with audio on Steam Deck](#black-screen-with-audio-on-steam-deck)

> [!IMPORTANT]
> If game looks dark and you get flickering / missing textures during a match then Lutris probably did not download dxvk properly. Clear your Lutris cache following [these steps](#how-to-clear-your-lutris-cache) and try again.


# Useful info

## How to install updates

If you have already installed the game and want to install a future update, follow these steps:

On Steam Deck, follow the below steps in Desktop Mode.

1. Download and extract the latest update file from the [SP Football Life 2026](https://www.pessmokepatch.com/2025/10/spfl26.htmll) website. This can be found in the `Download Links` section.
2. Run Lutris and select `SP Football Life 2026` (single click just to highlight it)
3. Click the wine glass icon at the bottom and select `Run EXE inside Wine Prefix`
4. Browse to the extracted update exe downloaded in Step 1. Filename should be something like `SPFL26_XXX.exe`, where XXX is the version number.
5. Run through the installer clicking `Next` and leaving everything as default. 
6. Done! You can confirm you have the latest version by launching the game checking the bottom left corner on the main menu screen.


## How to backup / restore your game saves

> [!WARNING]
> Uninstalling the game from Lutris, or deleting the folder where the game is installed will also deleted your save files. Make sure to backup the save folder before removing the game.

To make a backup of your save files, the folder is located in:

`<GAME_INSTALL_PATH>/drive_c/users/<USERNAME>/Documents/KONAMI/`

For Steam Deck, if following the guide and installing to the default location then this will be:

`/home/deck/Games/sp-football-life-2026/drive_c/users/deck/Documents/KONAMI/`

To restore you save files after a fresh install, just copy the `KONAMI` folder to that location.

## How to run `Settings` or `Switcher` tool

The is a new menu that lets you choose to run Settings or Switcher. Jsut laucnh the game in Lutris and select the option you want from the popup.

If you want to run them manually, here's how:

On Steam Deck, follow the below steps in Desktop Mode.

1. Run Lutris and select `SP Football Life 2026` (single click just to highlight it)
2. Click the wine glass icon at the bottom and select `Run EXE inside Wine Prefix`
3. Browse to `<GAME_INSTALL_PATH>/drive_c/Program Files (x86)/SP Football Life 2026`
4. Choose either `Settings.exe` or `FL26 switcher.exe` to launch the respective exe file and make any changes.

> [!Note]
> If you followed the guide above, and installed the game in the default Lutris location, the full path on Steam Deck will be `/home/deck/Games/sp-football-life-2026/drive_c/Program Files (x86)/SP Football Life 2026/`

## How to add SPFL to Steam Library / Game Mode

This is required to do on Steam Deck to get the controller working. It's an optional step on Linux Desktops.

There are two methods to do this. Try the first, and if it doesn't work, try the second.

Method 1:
1. Exit Steam and open Lutris
2. Right click on the game and chose `Create steam shortcut`
3. The game should now be in your Steam library. Launch Steam to check.
4. On Steam Deck, launch into Game Mode and test the game to see if your controller is working.
   

In some instances, the above will not work (e.g. if you have multiple Steam accounts on your device). Try this method if you have issues:

Method 2:
1. In Lutris, right click on the game and chose `Create Desktop shortcut`. A shortcut to the game should now be on your desktop.
2. Open Steam, and in the bottom left corner click `Add a Game` and chose `Add a Non-Steam Game`
3. Click `Browse` and navigate to your desktop and choose the shortcut you created above. On Steam Deck, this will be at `/home/deck/Desktop`. If the shortcut is not appearing, choose `All Files` from the `Filter` menu at the bottom.
4. After selecting the shortcut, click `Add Selected Program` and you should be good to go.
5. On Steam Deck, launch into Game Mode and test the game to see if your controller is working.

## How to clear your Lutris cache
Sometimes Lutris doesn't download needed files correctly. If you have any random errors during install, or during launching of the game, then always try clearing Lutris cache first to see if it fixes things.

1. Close Lutris (important!)
2. Open `Dolphin` file browser and navigate to `~/.var/app/net.lutris.Lutris/cache/lutris`. Depending on how you installed Lutris, the cache folder may be here instead: `~/.cache/lutris`
3. Delete all the files in this folder (it's safe to do so)
4. Launch Lutris again and you should see it downloading stuff at the start
5. Try what you were doing again and see if it fixes the issue

# Troubleshooting
### I've getting errors during the install... help!
First thing to try is [clear your Lutris cache](#how-to-clear-your-lutris-cache). Also make sure Lutris is fully updated using `Discover`. If you still have issues after this, then post an issue [here](https://github.com/eskay993/gamefiles/issues/new?assignees=&labels=&projects=&template=issue.md&title=) with the full error log (all the orange text in the Lutris window)

### Black screen with audio on Steam Deck

I'm not sure why this happens. This can happen when running the game through Lutris in Game Mode. As a workaround, I create a script to bypass Lutris. Do this:

- In Desktop Mode, open Steam
- Right click on you SP Football Life 2026 game and go to Properties
- Click `Browse` next to `Target` and navigate to where you installed the game. If you kept everything default, this should be `/home/deck/Games/sp-football-life-2026`
- Select the script `FL26_start.sh` and click OK
- Delete whatever is in `Launch Options`

Now try it in Game Mode.

### My controller is not being detected
You're probably playing in Desktop mode. It is recommended you play in Game Mode. To add the game to Game Mode, follow [these steps](#how-to-add-spfl-to-steam-library--game-mode). If you really want to play in Desktop mode. then hold down the `Start` button on the Steam Deck for a few seconds and it should switch the controller to Controller Mode. Hold `Start` again to switch back to Desktop Mode when you're done. 

### The gameplay is flickering or missing texture during a match
If game looks dark and you get flickering / missing textures during a match then Lutris probably did not download dxvk properly. Clear your Lutris cache following [these steps](#how-to-clear-your-lutris-cache) and try again.

### I'm still seeing black borders even with the aspect ratio patch
The aspect ratio patch only works during matches. It does not worn in menus. So you will see black bars in the menus, but the matches should be in full screen with no black bars.

# Credits
-  SmokePatch for their awesome work on [SP Football Life](https://www.pessmokepatch.com/)


# Additional Resources

- [Tutorial - Download and extract SP Football Life](https://www.pessmokepatch.com/2022/10/installation.html)
- [How To Transfer Files From PC To Steam Deck](https://gamerant.com/how-transfer-files-pc-steam-deck/)
- [Lutris / Writing Installers](https://github.com/lutris/lutris/blob/master/docs/installers.rst)
- [/r/SPFootballLife](https://www.reddit.com/r/SPFootballLife/)
- [/r/SteamDeck](https://www.reddit.com/r/SteamDeck/)
