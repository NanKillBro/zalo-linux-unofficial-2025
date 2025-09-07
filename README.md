# Zalo for Linux (Unofficial Port)
[Portable .AppImage version here](https://github.com/doandat943/zalo-for-linux)
- For normal installation of Zalo or Zalo-ZaDark, just follow the guide down here.
## Information

**THIS IS NOT USING THE ZALO WEBSITE,IT IS PORTED DIRECTLY FROM THE ZALO MAC DESKTOP CLIENT**

This project is an unofficial port of the MacOS version of Zalo to Linux. The porting process involved extracting the `.dmg` file from the MacOS version and locating the `app.asar` file in the directory, which is typically found in `/Applications/YourAppName.app/Contents/Resources`. The following steps were taken:

1. Extracted `app.asar` with the command:
    ```bash
    asar extract app.asar app
    ```
2. Navigated to the extracted directory and ran Zalo using Electron version 22.3.27. Note that using newer versions of Electron result in errors. The command to run Zalo is:
    ```bash
    electron .
    ```

Additionally, `install.sh` is used to add a tray icon using Python.

Tested on CachyOS with Gnome 48.4
- Zalo 25.8.1
<img width="1920" height="1080" alt="ảnh" src="https://github.com/user-attachments/assets/3f874f5f-6362-45d1-ae29-1fc663acb129" />
<img width="1920" height="1080" alt="ảnh" src="https://github.com/user-attachments/assets/4373b2ba-a807-4f8d-90ba-2ac4a66e2174" />

- Zalo 25.7.2 with ZaDark
<img width="1920" height="1080" alt="ảnh" src="https://github.com/user-attachments/assets/8afb0d1c-88de-4088-aa5f-3d4798c1d6cf" />
<img width="1920" height="1080" alt="ảnh" src="https://github.com/user-attachments/assets/5947b563-97d1-4f14-b260-c495fb7f0eab" />

## Installation

Python is required to run the tray icon script.

To install Zalo for Linux, you can choose one of these two:

***Recommended***
```bash
sh -c "$(curl -sSL https://raw.githubusercontent.com/NanKillBro/zalo-linux-unofficial-2025/main/install_curl.sh)"
```

or

```bash
git clone https://github.com/NanKillBro/zalo-linux-unofficial-2025
cd zalo-linux-unofficial
chmod +x install.sh
./install.sh
```
Zalo will be installed to ~/.local/share/Zalo

## Fixes

***Python3: Namespace AppIndicator3 not available***
```bash
sudo apt install gir1.2-appindicator3-0.1
```
***[855265:0809/185712.193181:FATAL:setuid_sandbox_host.cc(157)] The SUID sandbox helper binary was found, but is not configured correctly. Rather than run without sandboxing I'm aborting now. You need to make sure that /home/ubuntu/.local/share/Zalo/electron-v22.3.27-linux-x64/chrome-sandbox is owned by root and has mode 4755.***
```bash
sudo chown root $HOME/.local/share/Zalo/electron-v22.3.27-linux-x64/chrome-sandbox
sudo chmod 4755 $HOME/.local/share/Zalo/electron-v22.3.27-linux-x64/chrome-sandbox
```

## Bugs
- ~~There is no Minimize, Maximize and Close button.~~ (Fixed in the latest release)
- Can't make any call
- Using the Zalo Screenshot will instantly lead to crash.
- No Message Synchronization (E2EE): You will need to install Zalo PC on wine and then do the Message Synchronization. After that, backup all Zalo data using the built-in Export function and then Import on this.
- No Photos/Videos, Files and Links on the Contact Info panel for some reason (you can still viewing image/video, file or link like normal, it just don't appear on the contact info like this)
<img width="337" height="390" alt="image" src="https://github.com/user-attachments/assets/64ba27d6-ea5c-41be-bf0c-2993fd802e67" />

- There will be some bugs, as I don't have an understanding of how electron work, I won't be able to fix any bugs.

## Credit
- Original Repo: https://github.com/realdtn2/zalo-linux-unofficial-2024
- Zadark: https://github.com/quaric/zadark
- Zadark app.asar: https://github.com/l3qua
