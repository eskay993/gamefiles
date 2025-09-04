> Update 04/09/2025: Updated to work with latest Lutris and Reloaded (as of writing)

> Update 21/12/2023: Both scripts have now been updated to use Steem006's [Silent Hill 3 PC Fix](https://community.pcgamingwiki.com/files/file/1331-silent-hill-3-pc-fix-by-steam006/), which introduces additional fixes and performs better on Steam Deck.

# Intro
Lutris install script for SILENT HILL 3 on PC. The game runs at a near solid 60FPS (even on Steam Deck), and everything should be configured out of the box, including widescreen, audio fixes and controller support.

The following fixes and patches are installed:
- Silent Hill 3 PC Fix by Steam006 ([link](https://community.pcgamingwiki.com/files/file/1331-silent-hill-3-pc-fix-by-steam006/))
- Audio fixes that correct the pitch of sfx/music (See [Version Differences](#versions))
- Xinput Plus controller fix ([link](https://community.pcgamingwiki.com/files/file/2265-xinput-plus-v415290/))
- Controller mapping applied to match PS2 control scheme
- No-DVD patch automatically applied
- Various settings tweaks applied for improved performance

#

<a name="versions"></a> 
# Version Differences
There are 2 versions of the script, the main difference being which sound patch is installed.<br>

### 1. **silent-hill-3-installer-with-audio-enhancement-pack** ([Install Guide](#eap_guide))<br>
Try this version first. Installs MarioTainaka's [Audio Enhanced Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack) which  fixes the pitch and uses uncompressed audio files for better sound quality.
Relaoded-II Mod Loader is also installed to automatically load the audio pack. This version can be a bit fiddly to install, so if it doesn't work for you, try the other version below.

> As of writing (4th Sep 2025), this works with Audio Enhancement Pack v3.4 and Reloaded v1.29.2. Newer versions should still break, but also they may not.

### 2. **silent-hill-3-installer-with-sound-fixer** ([Install Guide](#sf_guide))<br>
Installs Psycho-A's [Silent Hill 3 PC Sound Fix](https://community.pcgamingwiki.com/files/file/1867-silent-hill-3-pc-sound-fix/) which directly patches the sound files to fix the pitch. The result is not as good as the Audio Enhancement Pack, but still much better than the stock audio. This version is a backup option in case the other version does not work for you.

#

# Install Guides

<a name="eap_guide"></a> 
## Enhanced Audio Pack Installer Guide

Try this version first. If it doesn't work, try the Sound Fixer version below. See [Version Differences](#versions).

1. Download [silent-hill-3-installer-with-audio-enhancement-pack.zip](https://github.com/eskay993/gamefiles/raw/main/silent-hill-3/silent-hill-3-installer-with-audio-enhancement-pack.zip) from this repo and extract it. You should now have a `.yaml` file.

2. Download [Silent Hill 3 PC Fix by Steam006](https://community.pcgamingwiki.com/files/file/1331-silent-hill-3-pc-fix-by-steam006/) from PCGamingWiki.
 Do not extract the zip.

3. Download [Silent Hill 3 Audio Enhancement Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack). There are 2 versions - Grab the one wihtout Reloaded.

4. Extract the content of the game ISO. On Windows, you can do this with WinRAR or 7zip. On Linux, Ark should be able to do this.

5. Run Lutris and click the `+` sign to add a game.

6. Select `Install from local install script` and point to the yaml file from Step 1, then click `Install` and `Install` again on the next screen.

7. Chose where to install the game, and check any boxes on the left that you want. For Steam Deck, click `Create steam shortcut` so the game will be available in your library in Game Mode. Click `Continue`.

8. Click `Browse` under `Silent Hill 3 Installer` and select `setup.exe` from the DVD/ISO files that you extracted in Step 4.

9. Click `Browse` under `Silent_Hill_3_PC_Fix-Steam006.zip` and select the Steam006 PC fix zip you downloaded in Step 2.

10. Click `Browse` under `Silent Hill 3 Audio Enhancement Pack` and select the audio enhancement 7z file you downloaded in Step 3.

11. Click `Install` and wait for the other files to download.

12. Select your prefered language from the drop-down menu then click `Continue`.

13. Select your resolution and click `Continue`. Automatic is recommended.

14. When SILENT HILL 3 actually starts it's install, the sceen will go black. That's fine. It's running in the background and should only take around 30 seconds. You can alt-tab to get back to your desktop if you like, or just wait.

15. Towards the end, `Reloaded-II Mod Loader` will launch and start downloading updates. You should see it download a couple of things then just sit there. Once it's finished, click close on Reloaded to continue.
> [!Important]
> Sometimes updates don't get trigger properly. If this happens, or you are not sure, close Reloaded, continue on with the rest of the steps.

16. After Reloaded, the script does a few more things then it's done. Next check everything is working.

17. Click Play on the game in Lutris. A popup should appear with `SILENT HILL 3` and `Reloaded` as options. Choose `SILENT HILL 3`.

18. If the very first screen you see says "Silent Hill Audio Enhancement Pack" then you're good! If you get a Reloaded popup error message, or you see a white screen with the KONAMI logo then Reloaded did not download what it needs. Follow these steps to try and resolve it:
    - Close the game if it's running.
    - Launch the game again from Lutris.
    - Select `Realoded II Mod Loader` from the menu
    - Once it launches leave it a few seconds and check to see if it triggers some downloads. You should see 2-3 quick popups flash with download progress bars.
    - Close Reloaded and try again

<br>

<a name="sf_guide"></a> 
## Sound Fixer Patch Installer Guide

Try this version if the Enhanced Audio Pack version above does not work. See [Version Differences](#versions).

1. Download [silent-hill-3-installer-with-sound-fixer.zip](https://github.com/eskay993/gamefiles/raw/main/silent-hill-3/silent-hill-3-installer-with-sound-fixer.zip) from this repo and extract it. You should now have a `.yaml` file.

2. Download [Silent Hill 3 PC Fix by Steam006](https://community.pcgamingwiki.com/files/file/1331-silent-hill-3-pc-fix-by-steam006/) from PCGamingWiki.
 Do not extract the zip.

3. Extract the content of the game ISO. On Windows, you can do this with WinRAR or 7zip. On Linux, Ark should be able to do this.

4. Run Lutris and click the `+` sign to add a game.

5. Select `Install from local install script` and point to the yaml file  from Step 1, then click `Install`, then `Install` again on the next screen.

6. Chose where to install the game, and check any boxes on the left that you want. For Steam Deck, click `Create steam shortcut` so the game will be available in your library in Game Mode. Click `Continue`.

7. Click `Browse` under `Silent Hill 3 Installer` and select `setup.exe` from the DVD/ISO files that you extracted in Step 3.

8. Click `Browse` under `Silent_Hill_3_PC_Fix-Steam006.zip` and select the zip you downloaded in Step 2.

9. Click `Install` and wait for the various files to download.

10. Select your prefered language from the drop-down menu then click `Continue`.

11. Select your resolution and click `Continue`. Automatic is recommended.

12. Let the installer do it's thing. It may appear to hang for a bit... just leave it to run.

12.  Done! Run the game and enjoy!

#

# Credits
- ThirteenAG for [Silent Hill 3 Widescreen Fix ](https://thirteenag.github.io/wfp#sh3)
- Steam006 for [Silent Hill 3 PC Fix](https://community.pcgamingwiki.com/files/file/1331-silent-hill-3-pc-fix-by-steam006/)
- Psycho-A for [Silent Hill 3 PC Sound Fix](https://community.pcgamingwiki.com/files/file/1867-silent-hill-3-pc-sound-fix/)
- MarioTainaka for [Silent Hill 3 Audio Enhancement Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack)
- 0dd14 for [XInput-Plus](https://sites.google.com/site/0dd14lab/xinput-plus)
- chrll for the original [Silent Hill 3 Lutris script](https://lutr.is/games/silent-hill-3/) that this script is based on
- Betwixt-Two-Ferns for [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) which inspired these scripts.

<br>

# Addiitonal Resources
- [PCGamingWiki / Silent Hill 3](https://www.pcgamingwiki.com/wiki/Silent_Hill_3)
- [Silent Hill 2 & 3 - Using fix *.dlls other than "dinput8.dll" crashes at launch](https://github.com/ThirteenAG/WidescreenFixesPack/issues/264)
- [Lutris / Writing Installers](https://github.com/lutris/lutris/blob/master/docs/installers.rst)
