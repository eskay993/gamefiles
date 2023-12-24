> Update 21/12/2023: Both scripts have now been updated to use Steem006's [Silent Hill 3 PC Fix](https://community.pcgamingwiki.com/files/file/1331-silent-hill-3-pc-fix-by-steam006/), which introduces additional fixes and performs better on Steam Deck.

# Intro
Updated Lutris installer script for the PC-DVD version of Silent Hill 3 based on chrll's original Lutris script and is inspired by Betwixt-Two-Ferns's awesome [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/). The game runs at a near solid 60FPS (even on Steam Deck), and everything should be configured out of the box, including widescreen, audio fixes and controller support.

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

> As of writing (21st Dec 2023), this version works with v3.2 of the Audio Enhacement Pack, however if Reloaded or the Audio Enhancement Pack introduce something unexpected in a future update, it may break the script.

### 2. **silent-hill-3-installer-with-sound-fixer** ([Install Guide](#sf_guide))<br>
Installs Psycho-A's [Silent Hill 3 PC Sound Fix](https://community.pcgamingwiki.com/files/file/1867-silent-hill-3-pc-sound-fix/) which directly patches the sound files to fix the pitch. The result is not as good as the Audio Enhacement Pack, but still much better than the stock audio. This version is a backup option in case the other version does not work for you.

#

# Install Guides

<a name="eap_guide"></a> 
## Enhanced Audio Pack Installer Guide

Try this version first. If it doesn't work, try the Sound Fixer version below. See [Version Differences](#versions).

1. Download [silent-hill-3-installer-with-audio-enhancement-pack.zip](https://github.com/eskay993/gamefiles/raw/main/silent-hill-3/silent-hill-3-installer-with-audio-enhancement-pack.zip) from this repo and extract it. You should now have a `.yaml` file.

2. Download [Silent Hill 3 PC Fix by Steam006](https://community.pcgamingwiki.com/files/file/1331-silent-hill-3-pc-fix-by-steam006/) from PCGamingWiki.
 Do not extract the zip.

3. (Optional) The script will automatically download [Silent Hill 3 Audio Enhancement Pack](https://www.moddb.com/mods/silent-hill-3-audio-enhancement-pack) from Mod DB during the install, but if you have slow internet, you may want to download it yourself beforehand as it's nearly 500MB. Do not extract the zip.

4. Extract the content of the game ISO. On Windows, you can do this with WinRAR or 7zip. On Linux, Ark should be able to do this.

5. Run Lutris and click the `+` sign to add a game.

6. Select `Install from local install script` and point to the yaml file from Step 1, then click `Install` and `Install` again on the next screen.

7. Chose where to install the game, and check any boxes on the left that you want. For Steam Deck, click `Create steam shortcut` so the game will be available in your library in Game Mode. Click `Continue`.

8. Click `Browse` under `Silent Hill 3 Installer` and select `setup.exe` from the DVD/ISO files that you extracted in Step 4.

9. Click `Browse` under `Silent_Hill_3_PC_Fix-Steam006.zip` and select the zip you downloaded in Step 2.

10. (Optional) If you downloaded the audio pack yourself from Mod DB in Step 3, then under `Silent Hill 3 Audio Enhancement Pack` change the "Source" from `Download` to `Select File` from the drop-down menu. Then click `Browse` and select the file you downloaded.

11. Click `Install` and wait for the various files to download.

12. Select your prefered language from the drop-down menu then click `Continue`.

13. Select your resolution and click `Continue`. Automatic is recommended.

14. Let the installer do it's thing. It may appear to hang for a bit... just leave it to run.

15. Towards the end, `Reloaded-II Mod Loader` will launch and start downloading updates. **IMPORTANT: Let it finish it's updates! You should see it download a couple of things then just sit there.**

16. Once the updates finish, just close `Reloaded-II`. Wait for the installer to finish up.

17. Done! Run the game and enjoy!


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
- Betwixt-Two-Ferns for [The Definitive Guide to Setting up Silent Hill 1-4 on Steam Deck](https://www.reddit.com/r/SteamDeck/comments/wziuwc/the_definitive_guide_to_setting_up_silent_hill_14/) which this script essentially automates.

<br>

# Addiitonal Resources
- [PCGamingWiki / Silent Hill 3](https://www.pcgamingwiki.com/wiki/Silent_Hill_3)
- [Silent Hill 2 & 3 - Using fix *.dlls other than "dinput8.dll" crashes at launch](https://github.com/ThirteenAG/WidescreenFixesPack/issues/264)
- [Lutris / Writing Installers](https://github.com/lutris/lutris/blob/master/docs/installers.rst)
