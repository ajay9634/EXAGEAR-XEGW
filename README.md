---

# EXAGEAR-XEGW MOD AJAY

A simple but powerful modification cache by Ajay.


---

# System Requirements

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

## LLVM Supported GPU

## Limit

- 64-bit / x64 Application Support

Not supported. This mod focuses on 32-bit applications. For 64-bit apps, check out Box64Droid or Box4Droid.



---

# Common Problems & Solutions

### 3D Test Not Working

For Mali or non-Snapdragon SOCs:

1. Go to Container Properties → Renderer → Select VirGL Built-in.

2. Open the container → Start Menu → Install VirGL Built-in from "Install Renderer."

3. Run the GPU test

### For Snapdragon SOCs:

1. Select Turnip DXVK or Turnip DRI3 Renderer in Container Properties.

2. Install Turnip Zink from Start Menu → Install Renderer.

### Game Crashes

1. Install required dependencies:

DirectX , VC Redist, PhysX , Mono Gecko

2. Change Wine version:

Use Wine 4 for DirectDraw (DDraw) games.

3. Adjust resolution:

Match game resolution with container resolution (e.g., 1280×720).

4. Change renderer versions:

DXVK (e.g., 1.10.3)

Wined3D (e.g., 4.18 for older games).

### Performance Optimization

1. Boost Performance:

Go to Start Menu → Boost → Install boost_on.

2. Renderer Settings:

Use Zink 11.11.23 for speed.

Enable CSMT 3 from the registry.

3. Audio Optimization:

Install PulseAudio or specific DSOUND versions (dsound 7).

### FPS Counter

Enable FPS HUD:

Go to Container Properties → Extra Launching Arguments → Enable FPS HUD and DXVK HUD.

---

# Additional Features

### Save Game Management

Use Export/Import Save Data from the Start Menu. you can install Ajay prefix (save game to drive D) from the start menu. so you can continue games in different container with ajay prefix installed. you can continue games in other Emu too like winlator ajay with ajay prefix.

export import save data feature Supports backing up save data across multiple containers.



---

- Known Bugs

-- PulseAudio Issues

Use the XServer XSDL app or Termux as a workaround:

# Install PulseAudio in Termux
pkg install pulseaudio -y

# Start PulseAudio
pulseaudio --start \
    --load="module-native-protocol-tcp auth-ip-acl=127.0.0.1 auth-anonymous=1" \
    --exit-idle-time=-1



---

Acknowledgments

WineHQ: Windows Compatibility Layer

DXVK: Direct3D-to-Vulkan Layer by @Doitsujin

3D Renderers: Contributions by @alexvorxx

Termux-X11: Developed by @Twaik

Input Bridge: Developed by @DotNetBurst



---

Join the Community

ExaGear Discord: https://discord.gg/Uy3UEMSrtY

Ajay's Discord: https://dsc.gg/emuplay0



---

Support

If you find this helpful, you can support the development here:



---

This GitHub-ready version includes clear formatting, headings, and markdown elements for enhanced readability and professionalism. Let me know if you'd like further tweaks!

