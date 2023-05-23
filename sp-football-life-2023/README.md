
# Index 
- [Install Guide](#install-guide)
- [Save file location plus WARNING!](#save-file-location-plus-warning)
- [Run Settings or Switcher tool after install](#run-settings-or-switcher-tool-after-install)
- [Add SPFL23 to Steam Library / Game Mode](#add-spfl23-to-steam-library--game-mode)
- [Installing future updates](#installing-future-updates)
- [Installing Real Faces mod](#installing-real-faces-mod)


<br>

# Intro 
Lutris script to install SP Football Life 2023 by [SmokePatch](https://www.pessmokepatch.com/). You can read about the game on their website, as well as download the game installer, updates and mods.

To get the game, go to [SP Football Life 2023](https://www.pessmokepatch.com/2022/10/spfl23.htm) and scroll down to `Download Links` and download both the base game and latest update.

<br>


# Install Guide

This guide assumes you already have Lutris installed on your Steam Deck. If you don't then you can install it from the `Discover` app. Follow the first 1 min of [this guide](https://www.youtube.com/watch?v=537bpLvPu64). Ignore the rest of the video.

It also assumes you have already downloaded the [SP Football Life 2023](https://www.pessmokepatch.com/2022/10/spfl23.htm) base game and latest update from the [SmokePatch](https://www.pessmokepatch.com/2022/10/spfl23.html) website and extracted both downloads. For a guide on how to download and extract the files, follow the first 2 mins of [this video](https://www.youtube.com/watch?v=ROhjt-0UKkc). Ignore everything after he extracts the files and follow the steps below to continue. If you are doing this part on Steam Deck, then you can use Ark (already installed on your Deck) instead of WinRAR to extract the files in the same way.

If you download and extract the files on Windows, you will need to transfer them to your Deck. There are lots of ways to do this, but the easiest is copying the files to a USB stick on Windows, then using a USB-C dock or dongle to mount it on your Deck. See [this guide](https://www.youtube.com/watch?v=GR-4enpiJjw).

Now onto the install guide. On Steam Deck, follow the below steps in Desktop Mode.

1. Make sure Lutris is up to date. This can fix some issues you might encounter. On Steam Deck, close Lutris, then open the `Discover` app and choose `Update` > `Update All`.

2. Download [sp-football-life-2023-win.zip](https://github.com/eskay993/gamefiles/raw/main/sp-football-life-2023/sp-football-life-2023-win.zip) from this repo and extract it.

3. Run Lutris and click the `+` sign to add a game.

4. Select `Install from local install script` and point to the extracted yaml script from Step 1.

5. Click `Install` on the next screen and choose where to install the game. On Steam Deck, Lutris by default will install the game to `/home/deck/Games/sp-football-life-2023`. Also tick `Create steam shortcut` so the game gets added to your Steam library. 

6. Click `Install` and on the next screen, click `Browse` under `SPFL23 Setup Exe` and select the base game setup exe that you downloaded and extracted earlier. Filename should be `SPFL23_setup.exe`.

7. Click `Browse` under `SPFL23 Update Exe` and select the update exe that you downloaded and extracted earlier. As of writing, the latest update is v3.00, so the filename is `SPFL23_300.exe`. The name will be slightly different for future updates.

8. Click `Browse` under `SPFL23 Update Exe` and select the update exe that you downloaded and extracted earlier. As of writing, the latest update is v3.00, so the filename is `SPFL23_300.exe`. The name will be slightly different for future updates. 

9. Click `Continue` and on the next screen, select the resolution you want from the dropdown menu. The script will configure the game to run at this resolution and also set the game to run in fullscreen. 

10. Click `Continue` to begin the install process. 

>Note: The whole install process from start to finish can take 10-15 mins so be patient and let it do it's thing.

11. After the dependencies are installed, the SPFL23 setup window should appear. Just keep clicking `Next` and leave everything as default. The game should start installing.

12. Once the game finishes installing, your web browser will auto-launch to the SmokePatch website. Just close or minimise your browser and return to the setup window.

> ```IMPORTANT:``` Before clicking `Exit`, uncheck `Start SP Football Life 2023`. Then click `Exit`.

13. The update setup window should now launch. Just keep clicking `Next` and leave everything as default and `Exit`.

14. The `Switcher` window should now launch. This tool allows you to chose how you want the gameplay experience to be. The SmokePatch team have tweaked the gameplay and stats so if you want to try their changes choose the top option. You can read about it on their website. Otherwise choose the PES 2021 option for the default PES experience (my preferred option). You can change this later. Once selected, keep clicking `Next` and `Exit`.

15. Click `Close` and the game should now appear in Lutris.

> ```IMPORTANT:``` On Steam Deck, you need to play the game in Game Mode, not Desktop Mode. In Desktop Mode, the controller will not be recognised. If you selected `Create steam shortcut` in Step 5 above, then the game should be in your library and you can launch it from Game Mode. If you  did not, or the game is not appearing in your Steam library, then follow [these steps](#add-spfl23-to-steam-library--game-mode) to add it. 


<br>

# Save file location plus WARNING!

> WARNING: Uninstalling the game from Lutris, or deleting the folder where the game is installed will also deleted your save files. Make sure to backup the save folder before removing the game.

To make a backup of your save files, the folder is located in:

`<GAME_INSTALL_PATH>/drive_c/users/<USERNAME>/Documents/KONAMI/`

For Steam Deck, if following the guide and installing to the default location then this will be:

`/home/deck/Games/sp-football-life-2023/drive_c/users/deck/Documents/KONAMI/`

To restore you save files after a fresh install, just copy the `KONAMI` folder to that location.

<br>

# Run Settings or Switcher tool after install
If you want to run Settings or the Switcher tool after you've already installed the game, follow these steps:

On Steam Deck, follow the below steps in Desktop Mode.

1. Run Lutris and select `SP Football Life 2023` (single click just to highlight it)

2. Click the wine glass icon at the bottom and select `Run EXE inside Wine Prefix`

3. Browse to `<GAME_INSTALL_PATH>/drive_c/Program Files (x86)/SP Football Life 2023`

> Note: If you followed the guide above, and installed the game in the default Lutris location, the full path on Steam Deck will be `/home/deck/Games/sp-football-life-2023/drive_c/Program Files (x86)/SP Football Life 2023/`

4. Choose either `Settings.exe` or `FL23 switcher.exe` to launch the respective exe file and make any changes.

<br>

# Add SPFL23 to Steam Library / Game Mode

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

3. Click `Browse` and navigate to your desktop and choose the shortcut you created above. On Steam Deck, this will be at `/home/deck/Desktop`. If the shortcut is not appearing, choose `All Files` from the `Filter` menu at the bottoom.

4. After selecting the shortcut, click `Add Selected Program` and you should be good to go.

5. On Steam Deck, launch into Game Mode and test the game to see if your controller is working.

<br>

# Installing future updates

If you have already installed the game and want to install a future update, follow these steps:

On Steam Deck, follow the below steps in Desktop Mode.

1. Download and extract the update file from the [SP Football Life 2023](https://www.pessmokepatch.com/2022/10/spfl23.htm) website. Links can be found on the right hand side under `SmokePatch Latest`

2. **Important:** Read the `Install Instructions` section on the page where you downloaded the update. Some updates need an earlier vesion to be installed first before installing the latest. For example, update 3.10 requires 3.00 to be installed first. In this example, follow the below steps to install update 3.00 first, then follow them again to install update 3.10.

2. Run Lutris and select `SP Football Life 2023` (single click just to highlight it)

3. Click the wine glass icon at the bottom and select `Run EXE inside Wine Prefix`

4. Browse to the extracted update exe downloaded in Step 1. Filename should be something like `SPFL23_XXX.exe`, where XXX is the version number.

5. Run through the installer clicking `Next` and leaving everything as default. 

6. Done! You can confirm you have the latest version by launching the game and going to `Settings > Game Options > Game Version`.

<br>

# Installing Real Faces mod

If you have already installed the game and want to add the Real Faces facepak mod, follow these steps:

On Steam Deck, follow the below steps in Desktop Mode.

1. Download and extract the [SP Football Life 2023: Real Faces](https://www.pessmokepatch.com/2022/08/fl23faces.html) facepak mod. You should have 4 CPK files.

2. Right click on the game in Lutris and choose `Browse local files`. Dolphin file browser should Lutris,  to where the game is installed.

3. Navigate to `drive_c/Program Files (x86)/SP Football Life 2023/download`

4. Copy the 4 CPK files here (backup the old files just in case)

<br>

# Credits
-  SmokePatch for their awesome [SP Football Life 2023](https://www.pessmokepatch.com/2022/10/spfl23.htm)

<br>

# Additional Resources

- [/r/SteamDeck](https://www.reddit.com/r/SteamDeck/)
- [How To Transfer Files From PC To Steam Deck](https://gamerant.com/how-transfer-files-pc-steam-deck/)
- [Lutris / Writing Installers](https://github.com/lutris/lutris/blob/master/docs/installers.rst)
