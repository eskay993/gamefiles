### silent-hill-3-lutris-install-script.yaml

Updated installer script for the PC-DVD version based on chrll's original script. In addition to installing the widescreen patch, it will also install XInput Fix (see below), Audio Enhacement Pack 2.0 from Mod DB, a No-DVD patch and it will configure controls to match PS2. I tried to make the script as plug and play as possible, including on Steam Deck where it wil set the correct resolution and settings.

To run the script, click the `+` sign in Lutris to add a game, then select `Install from local install script` and chose the yaml file.

Note:
You will be prompted for the following during the install process. These are not included in the installer:
- A No-DVD patched sh3.exe. This is required otherwise the game won't run. I can't supply it myself, but Google may help.
- [Silent Hill 3 Audio Enhacement Pack v2.0](https://www.moddb.com/downloads/start/210428?referer=https%3A%2F%2Fwww.moddb.com%2Fmods%2Fsilent-hill-3-audio-enhancement-pack%2Fdownloads%2Fsilent-hill-3-audio-enhancement-pack-version-2-0) downloaded from Mod DB. I could in theory include this in the install script to download automatically, but not sure if Mod DB allow that.
- The game install files extracted from the game DVD. See Betwixt-Two-Ferns's guide mentioned below for instructions.

Towards the end of the install process, Reloaded II Mod Loader will launch. Just let it run and do it's updates (important!), then just close it. No need to configure anything in Reloaded. It's done automatically.

The installer also tweaks the settings in `SilentHill3.WidescreenFix.ini` based on Betwixt-Two-Ferns's [awesome post on r/SteamDeck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/). Only slight difference is I set `FogComplexity = 25` as I found 35 was causing slow downs, even on my desktop with a Ryzen 3600 and a 1080 Ti. Your milage may vary.

### SilentHill3.XInputFix.zip

> Note: The yaml script does everything below automatically. This is more for reference if you want to do it manually (and a reminder for future me in case I forget!).
> 
A fix is required for the game to recognize XInput Right Stick, LT/RT, LS/RS and D-pad when assigning controls. XInputPlus has already been set up, so just unzip the file to the game install folder. 

Also included in the zip is an updated `key.ini` which maps the controls to match PS2 control sheme. 

Everything should just work out of the box for any standard XInput controller. No need to configure Steam Input.

Should also be compatible with [Silent Hill 3 Audio Enhancement Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack), however you will need to rename `dinput8.dll` included with the audio pack to `dsound.dll`. 

Don't rename `dinput8.dll` from this zip to `d3d8.dll` like some guides and forum posts suggest. It will crash at the start when the Relaoded's ASI loader kicks in.

Sources:<br>
https://www.pcgamingwiki.com/wiki/Silent_Hill_3#Controller_support<br>
[\[Silent Hill 2 & 3\] Using fix *.dlls other than "dinput8.dll" crashes at launch(]https://github.com/ThirteenAG/WidescreenFixesPack/issues/264)
