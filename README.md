---

# 💥 EXAGEAR-XEGW MOD AJAY

A simple but powerful modification cache by Ajay.

## 💥 ED 6.0 FEATURES

  - Different files download by bat or cmd from GitHub
  - Renderer Setup according to Device
  - save game data to drive D by Ajay prefix (It Can be installed from the Start Menu)
  - Lightweight base cache

---

# 💥 System Requirements

## T+Z Supported GPU

 ### Minimum:

   - Adreno 610 (Snapdragon 665, 680)

   - Adreno 616 (Snapdragon 710, 712)

   - Adreno 618 (Snapdragon 720G, 730, 730G, 732G)

   - Adreno 619 (Snapdragon 750G, 480)

   - Adreno 619L (Snapdragon 690)

   - Adreno 620 (Snapdragon 765, 765G)

   - Adreno 630 (Snapdragon 845, 850)


### Recommended:

   - Adreno 640 (Snapdragon 855, 855+, 860)

   - Adreno 642L (Snapdragon 778G)

   - Adreno 650 (Snapdragon 865, 865+)

   - Adreno 660 (Snapdragon 888, 888+)

## VirGL Supported GPU
   - All GPU

## LLVM Supported GPU
   - All GPU

## Limit

   - 64-bit / x64 Application aren't supported : This mod focuses on 32-bit applications. For 64-bit apps, check out Winlator,mobox,dark OS and other Box64 Emu.

   - Latest Android Devices : This may not work on latest Android Devices.


---

# 💥 Common Problems & Solutions

 ### 3D Test Not Working

   - For Mali or non-Snapdragon SOCs:

     1. Go to Container Properties → Renderer → Select VirGL Built-in.

     2. Open the container → Start Menu → Install VirGL Built-in from "Install Renderer."

     3. Run the GPU test

   - For Snapdragon SOCs:

     1. Select Turnip DXVK or Turnip DRI3 Renderer in Container Properties.

     2. Install Turnip Zink from Start Menu → Install Renderer.

 ### Game Crashes

   1. Install required dependencies:

      DirectX , VC Redist, PhysX , Mono Gecko etc.

   2. Change Wine version:

      1. Use Wine 4 for DirectDraw (DDraw) and old dx games.
      2. Use wine 8.2 for dx9,dx10,dx11 games

   3. Adjust resolution:

      Match game resolution with container resolution (e.g., 1280×720 , 1024×768).

   4. Change d3d versions:

      1. DXVK (e.g., 1.10.3 ,0.96)
      2. Wined3D (e.g., 4.18 for older games)
  
   5. install direct music from the start menu, needed for some games

   6. Change dsound version:

      Try diffrent dsound like dsound 0 for spider man 2 pc, dsound 7 for far cry 2 etc

### Check installed Renderer

- Go go start menu/..Renderer/..check currently installed renderer and it will open folder then check it.

### Dxvk compatibility on Exagear

- dxvk 0.96 - for directX 10/11 (Supported in any wine)
- dxvk 1.10 - for some directX 9 games like city racing (Supported in any 
wine)
- dxvk 1.10.3 - stable for most directX 9 games (Supported in any wine)
- dxvk 2.0 to the latest - useful in most dx8 and dx9 games (Supported in wine 7.1 and later)
      
### Performance Optimization

- Boost Performance:

   Go to Start Menu → Boost → Install
   boost_on
  
- Registry
     
   Enable CSMT 3 from the registry.

- Audio Optimization:

   Install PulseAudio or specific 
   DSOUND versions (eg.dsound 7).

- Extra optimization

  1. install various things from the
    Start Menu
  2. try different wrapper
  3. try low resolution if it's supported
  

 ### Enable FPS Counter

   Go to Container Properties → Extra
   Launching Arguments → Enable FPS
   HUD and DXVK HUD.

---

# 💥 Additional Features

### Save Game Management

  Use Export/Import Save Data from the Start Menu. you can install Ajay prefix (save game to drive D) from the start menu. so you can continue games in different container with ajay prefix installed. you can continue games in other Emu too like winlator ajay with ajay prefix.

export import save data feature Supports backing up save data across multiple containers.

### Extra launching arguments

  you can add various cmd and env to Containers.

  
 ---
 # Known Bugs

## PulseAudio Issues

Use the XServer XSDL app

## older wine bug

you may face drive D error sometimes, Restart container to fix this.

## Freezing games bug

Switch Exagear to force split mode then open Fill memory app and fill extra ram.

---

# 💥 Acknowledgments

- WineHQ: Windows Compatibility Layer

- DXVK: Direct3D-to-Vulkan Layer by @Doitsujin

- 3D Renderers: Contributions by @alexvorxx

- Termux-X11: Developed by @Twaik

- Input Bridge: Developed by @DotNetBurst

- [Edpatch](https://github.com/ewt45/EDPatch/blob/main/readme/readme_en.md) by ewt45
  
- Base cache by Elochnik (Allmod)
  
- Emugear international discord Team

- Emuplay0 discord Team


---

Join the Community

Emugear Discord: [click here](https://discord.gg/Uy3UEMSrtY)

My Discord: [click here](https://dsc.gg/emuplay0)



---
