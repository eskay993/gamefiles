# Intro
Updated Lutris installer script for the 3 CD EU version of Silent Hill 2: Director's Cut that also installs [Silent Hill 2: Enhanced Edition](https://enhanced.townofsilenthill.com/SH2/). 

The primary difference is that this version does not use Wine Virtual Desktop as this causes cropping issues on Steam Deck. It also uses `lutris-fshack-7.1-x86_64` which seems to be a more stable on Deck.

There is also both an online and offline versions of the script are provided. See Version Differences below.

#

<a name="versions"></a> 
# Version Differences
There are 2 versions of the script:<br>

### 1. **silent-hill-2-lutris-installer-online** [ [Download](https://github.com/eskay993/gamefiles/raw/main/silent-hill-2/silent-hill-2-lutris-installer-online.zip) ]<br>
If you are installing for the first time, use this online version. It run the Silent Hill 2 Enhanced Edition Online Installer and sets everything up out of the box.

The Online Installer downloads around 4GB worth of files, so can take time on slower internet (like mine!)


### 2. **silent-hill-2-lutris-installer-offline** [ [Download](https://github.com/eskay993/gamefiles/raw/main/silent-hill-2/silent-hill-2-lutris-installer-offline.zip) ]<br>
Use this offline version if you have already used the Silent Hill 2 Enhanced Edition Online Installer and have everything set up already. This version is useful if you want to quickly then install it again at a later stage, or on another machine.

You will need to make a zip of your game folder with Silent Hill 2 Enhanced Edition fully installed. The default install location: is:

```
<PATH_TO_GAMEDIR>/drive_c/Program Files (x86)/Konami/Silent Hill 2 - Directors Cut/
```

Zip up all the file inside there. The root of the zip should look something like this:

```
├── data
├── sh2e
├── alsoft.ini
├── binkw32.dll
├── cin.dat
├── d3d8.dll
├── d3d8.ini
├── d3d8.log
├── d3d8.res
├── device.fix
├── Dinput8.dll
├── Dinput.dll
├── dsoal-aldrv.dll
├── dsound.dll
├── keyconf.dat
├── Konami Homepage.url
├── language.ini
├── local.fix
├── msvcp70.dll
├── msvcr70.dll
├── options.ini
├── Readme.htm
├── Readme.txt
├── settings.ini
├── SH2EEconfig.exe
├── SH2EEsetup.dat
├── SH2EEsetup.exe
├── sh2.ico
├── sh2logo.jpg
├── sh2pc.dxvk-cache
├── sh2pc.exe
├── sh2pc.exe.bak
├── XInput1_3.dll
└── XInputPlus.ini
```


<br>

#

# Credits
- The amazing team at [Silent Hill 2: Enhanced Edition](https://enhanced.townofsilenthill.com/SH2/)
- legluondunet for the original [Silent Hill 2: Director's Cut Lutris script](https://lutris.net/games/silent-hill-2-directors-cut//) that this build off
- Betwixt-Two-Ferns for [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) which this script essentially automates.

<br>

# Addiitonal Resources
- [PCGamingWiki / Silent Hill 2: Director's Cut](https://www.pcgamingwiki.com/wiki/Silent_Hill_2:_Director%27s_Cut)
- [Lutris / Writing Installers](https://github.com/lutris/lutris/blob/master/docs/installers.rst)
