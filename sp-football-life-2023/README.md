
# Index 
- [Install Guide](#install-guide)
- [Save file location plus WARNING!](#save-file-location-plus-warning)
- [Run Settings or Switcher tool after install](#run-settings-or-switcher-tool-after-install)
- [Installing future updates](#installing-future-updates)
- [Installing Real Faces mod](#installing-real-faces-mod)


<br>

# Intro 
Lutris script to install SP Football Life 2023 by [SmokePatch](https://www.pessmokepatch.com/). You can read about the game on their website, as well as download the game installer, updates and mods.

To get the game, go to [SP Football Life 2023](https://www.pessmokepatch.com/2022/10/spfl23.htm) and scroll down to `Download Links` and download both the base game and latest update.

<br>


# Install Guide

This assumes you've already downloaded the [SP Football Life 2023](https://www.pessmokepatch.com/2022/10/spfl23.htm) base game and latest update from the [SmokePatch](https://www.pessmokepatch.com/2022/10/spfl23.html) website and extracted both downloads.

On Steam Deck, follow the below steps in Desktop Mode.

1. Download [sp-football-life-2023-win.zip](https://github.com/eskay993/gamefiles/raw/main/sp-football-life-2023/sp-football-life-2023-win.zip) from this repo and extract it.

2. Run Lutris and click the `+` sign to add a game.

3. Select `Install from local install script` and point to the extracted yaml script from Step 1.

4. Click `Install` on the next screen and choose where to install the game. On Steam Deck, Lutris by default will install the game to `/home/deck/Games/sp-football-life-2023`. Tick any boxes on the left if you want shortcuts added to your Desktop/Steam, and click `Install`.

6. On the next screen, click `Browse` under `SPFL23 Setup Exe` and select the base game setup exe that you downloaded and extracted earlier. Filename should be `SPFL23_setup.exe`.

7. Click `Browse` under `SPFL23 Update Exe` and select the update exe that you downloaded and extracted earlier. As of writing, the latest update is v2.00, so the filename is `SPFL23_200.exe`. The name will be slightly different for future updates.

8. Click `Continue` to begin the install process. 

>Note: The whole install process from start to finish can take 10-15 mins so be patient and let it do it's thing.

9. After the dependencies are installed, the SPFL23 setup window should appear. Just keep clicking `Next` and leave everything as default. The game should start installing.

10. Once the game finishes installing, your web browser will auto-launch to the SmokePatch website. Just close or minimise your browser and return to the setup window.

11. ```IMPORTANT:``` Before clicking `Exit`, uncheck `Start SP Football Life 2023`. Then click `Exit`.

12. The update setup window should now open. Just keep clicking `Next` and leave everything as default and `Exit`.

13. The `Switcher` window should now launch. This tool allows you to chose how you want the gameplay experience to be. The SmokePatch team have tweaked the gameplay and stats so if you want to try their changes choose the top option. You can read about it on their website. Otherwise choose the PES 2021 option for the default PES experience (my preferred option). You can change this later. Once selected, keep clicking `Next` and `Exit`.

14. The `Settings` window should now appear. Choose `Fullscreen` and make any other changes you like. In most cases, the default is fine. Click `Save` and exit.

> NOTE: On Steam Deck, `Fullscreen` will be greyed out at first. Change the resolution to `1280x800` and `Fullscreen` will now be selectable.

15. Click `Close` and you're done! You can launch the game from Lutris directly, or add it to Steam by right clicking on the `SP Football Life 2023` banner and choosing `Create Steam shortcut`. It is recommended to fully exit Steam before adding the shortcut.

<br>

# Save file location plus WARNING!

> WARNING: Uninstalling the game from Lutris, or deleting the folder where the game is installed will also deleted your save files. Make sure to backup the save folder before removing the game.

To make a backup of your save files, the folder is located in:

`<GAME_INSTALL_PATH>/drive_c/users/deck/Documents/KONAMI/`

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

# Installing future updates

If you have already installed the game and want to install a future update, follow these steps:

On Steam Deck, follow the below steps in Desktop Mode.

1. Download and extract the update file from the [SP Football Life 2023](https://www.pessmokepatch.com/2022/10/spfl23.htm) website
1. Run Lutris and select `SP Football Life 2023` (single click just to highlight it)

2. Click the wine glass icon at the bottom and select `Run EXE inside Wine Prefix`

3. Browse to the extracted update exe downloaded in Step 1. Filename should be something like `SPFL23_XXX.exe`, where XXX is the version number.

4. Run through the installer clicking `Next` and leaving everything as default. 

5. Done! You can confirm you have the latest version by launching the game and going to `Settings > Game Options > Game Version`.

<br>

# Installing Real Faces mod

If you have already installed the game and want to add the Real Faces facepak mod, follow these steps:

On Steam Deck, follow the below steps in Desktop Mode.

1. Download and extract the [SP Football Life 2023: Real Faces](https://www.pessmokepatch.com/2022/08/fl23faces.html) facepak mod. You should have 4 CPK files.

2. Right click on the game in Lutris and choose `Browse local files`. Dolphin file browser should open to where the game is installed.

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
