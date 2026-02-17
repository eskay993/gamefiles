<h1>SP Football Life 2026</h1>
<h3>Steam Deck / Linux Installer</h3>

> [!Important]
> 17/02/2026: Please make sure to update to Lutris 0.5.20 at least. This fixes a few issues with earlier versions of the script. If your distro does not ship this version yet, try the flatpak. 

- [Install Guide](#install-guide)
- [Useful info](#useful-info)
  - [How to install updates](#how-to-install-updates)
  - [How to backup / restore your game saves](#how-to-backup--restore-your-game-saves)
  - [How to run `Settings` or `Switcher` tool](#how-to-run-settings-or-switcher-tool)
  - [How to add SPFL to Steam Library / Game Mode](#how-to-add-spfl-to-steam-library--game-mode)
  - [How to clear your Lutris cache](#how-to-clear-your-lutris-cache)
- [Troubleshooting](#troubleshooting)
  - [I've getting errors during the install... help!](#ive-getting-errors-during-the-install-help)
  - [Black screen with audio on Steam Deck](#black-screen-with-audio-on-steam-deck)
    - [Solution 1:](#solution-1)
    - [Solution 2](#solution-2)
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

1. Important: Make sure Lutris is installed and fully updated on your Steam Deck. You need at least version `0.5.20`. You can install it and update it from the `Discover` app. If you're not sure how to install it, then follow the first 1 min of [this guide](https://www.youtube.com/watch?v=537bpLvPu64). Ignore the rest of the video.

2. Follow steps 1 and 2 from [Tutorial - Install SP Football Life](https://www.pessmokepatch.com/2022/10/installation.html) to download and extract the game from the [SmokePatch](https://www.pessmokepatch.com/) website. Only do steps 1 and 2, then come back here after extracting the installer files.

3. Download [sp-football-life-2026-win.zip](https://github.com/eskay993/gamefiles/raw/main/sp-football-life-2026/sp-football-life-2026-win.zip) from this repo and extract it.

4. Run Lutris and click the `+` sign to add a game.

5. Select `Install from local install script` and point to the extracted yaml script from step 1. Click `Install`.

6. On the next screen. choose where to install the game. On Steam Deck, Lutris by default will install the game to `/home/deck/Games/sp-football-life-2026`. Also tick `Create steam shortcut` so the game gets added to your Steam library. Click `Install` 

7. On the next screen, click `Browse` under `SPFL26_setup.exe` and select the `SPFL26_setup.exe` from the files you extracted step 2. Click `Continue` and wait for the various files to download.

8. Click `Continue` to begin the install process. You may get a popup asking you to install mono. Just click cancel if you do. 

9. After some requirements are installed, the SPFL setup window should appear. Just keep clicking `Next` and leave everything as default. The game should start installing. Click `Exit` when it's done.

10. 
    - "`Full Screen`" is selected. If it's greyed out, select the highest resolution available in the dropdown and you should then be able to select Full Screen.

    - Chose "`Enable 2`" under V-Sync. Most people have better frame rate with this.

    - If you're using a PS controller AND you are planning to launch the game outside Steam, then make sure to click on the Controllers tab, select `DirectInput` then select your controller from the drop down menu. If you will be adding the game to Steam and launching it from there, then leave it on `XInput` since Steam by default converts any controller input to Xinput.

11. Next, the `Switcher`  app will open. Choose the settings you want and click `Apply` then `Close`. Have a look at the SPFL website or subreddit for more info on what these settings do.

12. Now click `Close` in Lutris and the game should now appear in your Lutris library.

13. Make sure to now install the latest update from SmokePatch. This fixes many issues,. including controllers not being detected. Follow - [How to install updates](#how-to-install-updates)

14. The final step! Please read the **important** notes below. And check [Troubleshooting](#troubleshooting) if you have any issues

> [!IMPORTANT]
> On Steam Deck, when playing in Game Mode and adding the game through Lutris, you may encounter a black screen issue with audio. See [Black screen with audio on Steam Deck](#black-screen-with-audio-on-steam-deck)

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

The new 2026 script comes with a menu that lets you choose to run Settings or Switcher right from Lutris. 

In Desktop Mode, just launch the game in Lutris and select the option you want from the popup. 

If you do not see the menu option for Switcher, or it's not running, try this Linux native version I made. Instructions in the zip - [FL_2026_Switcher-Linux.zip](https://github.com/eskay993/gamefiles/raw/refs/heads/main/sp-football-life-2026/FL_2026_Switcher-Linux.zip)

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

## I've getting errors during the install... help!

First thing to try is [clear your Lutris cache](#how-to-clear-your-lutris-cache). Also make sure Lutris is fully updated using `Discover`. If you still have issues after this, then post an issue [here](https://github.com/eskay993/gamefiles/issues/new?assignees=&labels=&projects=&template=issue.md&title=) with the full error log (all the orange text in the Lutris window)

## Black screen with audio on Steam Deck

For some people, when launching the game in Game Mode you might get a black screen while still hearing the audio in the background. This is related to the flatpak version of gamescope installed alongside Lutris.

The latest version of the yaml script should address this, but for anyone still experiencing it, here are 2 solutions. Try them in order:

#### Solution 1:

Launch the game with `ENABLE_GAMESCOPE_WSI=0`. To do this:

- In Desktop Mode, right click the game in Lutris and choose `Configure` then `System Options`
- Scroll down to Environment Variables and click the `Add`button
- Under Key, put `ENABLE_GAMESCOPE_WS`
- Under Value, put `0`

<img src="https://raw.githubusercontent.com/eskay993/gamefiles/refs/heads/main/tools/images/gamescope_env_var.jpg" width="500">

#### Solution 2

I create a bash script that bypasses Lutris completely. Change your Steam shortcut for the game to point to this script following these steps:

- In Desktop Mode, open Steam
- Right click on you SP Football Life 2026 game and go to Properties
- Click `Browse` next to `Target` and navigate to where you installed the game. If you kept everything default, this should be `/home/deck/Games/sp-football-life-2026`
- Select the script `FL26_start.sh` and click OK
- Delete whatever is in `Launch Options`

Now try it in Game Mode.

## My controller is not being detected...

Please make sure you have update 1.4 installed before troubleshooting any controller issues. This shoudl fix most issues in the first instance.

#### Not working in Desktop Mode:

It is recommended you play in Game Mode. To add the game to Game Mode, follow [these steps](#how-to-add-spfl-to-steam-library--game-mode). If you really want to play in Desktop mode. then hold down the `Start` button on the Steam Deck for a few seconds and it should switch the controller to Controller Mode. Hold `Start` again to switch back to Desktop Mode when you're done. 

#### Not working in Steam when using DirectInput / PlayStation Controller

Steam by default converts any controller input to XInput, so if you changed you controller setting to Directinput in the Settings.exe app, then you need to disable Steam Input in Steam.

Right click on the game, go to `Properties`, `Controllers`, then choose `Disable Steam Input` from the drop down.

### The gameplay is flickering or missing texture during a match

If game looks dark and you get flickering / missing textures during a match then Lutris probably did not download dxvk properly. Clear your Lutris cache following [these steps](#how-to-clear-your-lutris-cache) and try again.

## I'm still seeing black borders even with the aspect ratio patch

The aspect ratio patch only works during matches. It does not worn in menus. So you will see black bars in the menus, but the matches should be in full screen with no black bars.

# Credits

- SmokePatch for their awesome work on [SP Football Life](https://www.pessmokepatch.com/)

# Additional Resources

- [Tutorial - Download and extract SP Football Life](https://www.pessmokepatch.com/2022/10/installation.html)
- [How To Transfer Files From PC To Steam Deck](https://gamerant.com/how-transfer-files-pc-steam-deck/)
- [Lutris / Writing Installers](https://github.com/lutris/lutris/blob/master/docs/installers.rst)
- [/r/SPFootballLife](https://www.reddit.com/r/SPFootballLife/)
- [/r/SteamDeck](https://www.reddit.com/r/SteamDeck/)
