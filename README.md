# EXAGEAR-XEGW
EXAGEAR XEGW MOD AJAY

Just a Simple Modification Cache by Ajay

-----------------------------------------
⚡ Is their a system requirements for T+Z Acceleration ?
Minimum:

Adreno 610 (Qualcomm Snapdragon 665, 680)
Adreno 616 (Qualcomm Snapdragon 710, 712)
Adreno 618 (Qualcomm Snapdragon 720G, 730, 730G, 732G)
Adreno 619 (Qualcomm Snapdragon 750G, 480)
Adreno 619L (Qualcomm Snapdragon 690)
Adreno 620 (Qualcomm Snapdragon 765, 765G)
Adreno 630 (Qualcomm Snapdragon 845, 850)
Recommended:

Adreno 640 (Qualcomm Snapdragon 855, 855+, 860)
Adreno 642L (Qualcomm Snapdragon 778G)
Adreno 650 (Qualcomm Snapdragon 865, 865+)
Adreno 660 (Qualcomm Snapdragon 888, 888+)

⚡Is their a system requirements for dxvk Acceleration ?

aderno 610,618+....7xx

⚡Is their a system requirements for virGl Acceleration ?

almost every gpu support it.

⚡WHAT IF MY PHONE DIDN'T REACHED T+Z REQUIREMENTS :'(
If your device isn't on the list or uses Mali-GPU or Adreno 5xx you can only run VirGL Renderer or LLVM.

⚡Requirements for VirGL: Support for OpenGL ES 2.1(3.0) and higher.

⚡IS ADRENO 7XX T+Z RENDERER SUPPORTED ?
Yes, But It's in very early stage and may not work at all.

⚡DOES THIS SUPPORTED 64-BITS/X64 APPLICATIONS ?
Absolutely no, this is ExaGear but much better and modified, but you may want to check Box64Droid or Box4Droid.

-----------------------------------
# Help

Exagear common problems and solutions

? 3d test isn't working - 
-install Renderer from the start menu.
- For mali or other soc users- Go to Container properties then go to Renderer and select virGl built in then open container and go to start menu and install virGl built in from 'install Renderer ' option. now you can check 3d test and games.Mali users can't use Turnip and zink. you can use only wined3d
- For snapdragon users - select Turnip dxvk or turnip dri3 Renderer from the container properties and install Turnip zink from the start menu/install Renderer. you can use dxvk and wined3d.

? My Game is crashing.
- install direct x , vc redist,physx and mono gecko. it may improve stability.
- change wine version ( for d draw games, use wine 4)
- install direct music from the start menu, needed for some games.
- Change dsound version 
- check game resolution and Container resolution, they should be the same. if not try higher resolution in container settings like 1024�768 and 1280�720
- change dxvk or wined3d version, some dx 11 games need dxvk 1.10.3 or dxvk 0.96.

? How to check which Renderer is currently installed?
- Go go start menu/install renderer/Currently installed renderer/check currently installed renderer and it will open folder then view Turnip and mesa folder.

? How to show fps in games or enable fps hud?
- go to container properties/Extra launching arguments/ enable fps hud and dxvk hud

? wine is crashing-
- currently wine 8.21 us supported in Exagear. wine 9 isn't supported. vanilla, staging, staging tkg wine are working. proton and ge wine aren't working.
- the best wine are wine 4.0.4 and wine 8.2 without input problem.

? Games are freezed, not responding to any input -
- wait for few minutes then if not working force close Container and restart game again.
- select only core 7 desktop, it may solve freezing issue in some games.
- delete intro video file from the game then try again
- use ' Fill memory ' app from the play store. both app should be in foreground and fill ram 500+ then 500+ again. this works in most games.
- if the above tricks doesn't work for you then use winlator or mobox.

? How to improve performance?
- go to start menu/Boost and install 'boost_on'
- for old d draw games like igi 1, use wine 4.0.4 . if you are using wine 8.2 then install wined3d 4.18
- for new games - use dxvk latest or original wined3d
- zink 11.11.23 is very fast.
- use csmt 3 from the registry.
- install dsound 7 , it's very fast

? Dxvk compatibility on wine-
- wine 3.19 and above - you can use dxvk 1.10.3 and older
- wine 7.1 and above - you can use latest dxvk

? How to use pulse audio?
- you can enable pulse audio from right side Gear
- install pulse registry from the start menu
- if pulse not working then use X server XSDL app from the play store.

? Game audio is stuttering or not smooth -
- change dsound version
- some games with special dsound - dsound 0- spider man 2 pc, dsound 7- far cry 2  etc 
- install pulse audio
- install dmusic 

? Game sound is not working at all-
- run the game in wine 4
- change prefix from the start menu- install ajay 2,csmt3 prefix then create a new container and run the game. 
- change dsound version
- install dmusic
- check sound files in game folder

? Exagear custom controls not working in specific games-
- try input bridge
- star war republic commando need input bridge

? How to use cheat code  Shortcut cmd in game
- you can use (.bat ) file for this. create a txt file in game folder where main exe program is exist . add this cmd - " Game.exe -(any cmd)"
- you can create launch (.bat) in "container properties/Extra launching arguments/add". you can check 'far cry 2 cheat(4,5,6,7) ' for this.

? How to use trainer /cheat code exe?
- run f5taskmgr then run trainer and game. press f5 and go to trainer and select cheat on and play games.
- use Hacker's keyboard for cheat code

? use Exagear import or export data option -
- If save game is present in the Game folder then backup manually
- if save game us present in drive_C/users then you can use Exagear export and import from the start menu
- you can export save game from all different containers and you can import all save games in one container.
- after creating a new container, import exagear save data

? is this mod is better than others?
- it's different to different devices. for some users, it's good and fir some users it doesn't.
- if you can't understand some features or option then go to my discord and ask questions.
- you can try other mod too .
- I modified for only me and my games and shared to my friends and if you have any problems then you can use other mod Exagear.
------------------------------------------------------------
# Pulse audio Bug
some users may face problem to pulse audio. you can use external app Xserver XSDL appor use Termux

🔥If you want to use termux x11 pulse audio in Exagear

(Follow these commands in termux)

- First step- install pulse audio in turmux by this cmd

`pkg install pulseaudio -y`

- Second step- Then run this cmd to activate pulse audio

`pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1`  

- Third step- if pulse not detected in winecfg then install pulse.reg from the Registry Start menu 
-----------------------------------------------------

❤️Acknowledgements
Termux-X11 by @Twaik,
Windows Compatibility Layer by WineHQ,
EDPatcher by @bu2ub,
Input-Bridge by @DotNetBurst,
3D Renderers by @alexvorxx,
DXVK by @Doitsujin,
WineD3D For Windows by @Adolfintel,
And ExaGear International Devs & Testers and modmakers

ExaGear international discord link- https://discord.gg/Uy3UEMSrtY

My discord link-
https://dsc.gg/emuplay0

---------------------------------------------------
