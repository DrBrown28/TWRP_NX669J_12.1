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

![NX669J] (https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.ebay.co.uk%2Fitm%2F164817430578&psig=AOvVaw0cw69f6s065Pz3tLHYlyeh&ust=1697670555228000&source=images&cd=vfe&opi=89978449&ved=0CA8QjRxqFwoTCIjAxuqZ_oEDFQAAAAAdAAAAABAP)

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
