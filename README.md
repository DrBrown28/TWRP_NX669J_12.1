## Custom Recovery | Device Tree
[RedMagic 6 Pro]
| Device                  | RedMagic 6 Pro                                          |
| ----------------------- | ---------------------------------------------------------|
| SoC                     | Qualcomm SM8350 Snapdragon 888 (5 nm)                      |      
| CPU                     | 1x2.84 GHz Cortex-X1 +3x2.42 GHz Cortex-A78 + 4x1.8 GHz Cortex-A55  |
| GPU                     | Adreno 660                                             |
| Internal                | 128GB 12GB RAM, 256GB 12GB RAM, 256GB 16GB RAM, 512GB 18GB RAM UFS 3.1                 |
| Model                   | NX669J |
| Codename                | NX669J |

## Device picture

![NX669J](https://www.google.com/search?q=red+magic+6+pro+png&sca_esv=572049527&tbm=isch&prmd=isvn&source=lnms&sa=X&ved=2ahUKEwjSm6bckeqBAxXwtYQIHRwOBgUQ_AUoAXoECAQQAQ&biw=412&bih=712&dpr=2.63#imgrc=DVyZeXo52qo1tM)

### Release Notes
* Orangefox/TWRP now boots, decryption is not working fine.
* It was tested in all versions of Red Magic 6 pro and in latest versions of Red Magic 6s Pro.
* Do not flash OTA firmware yet, it is not well-tested, could brick your device.
* Red Magic 6 Series is Virtual A/B without a dedicated Recovery Partition, need to `boot` into twrp to flash the current twrp from advanced sertings.

### Working Features
* Internal Storage
* FastbootD
* ADB Commands and Terminal
* Flashing .zip files.
* Flashing Firmware (not working)
* Flashing non-logical .img files.
* ADB Sideload
* MTP

### Issues and Bugs
* Flashing OTA.
* Encryption

### Credits
```
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
# SPDX-License-Identifier: Apache-2.0
```
