# Reality Xiaobai One-Click Installation Script: A Comprehensive Guide

In the world of technology, efficiency is key. This is why we have developed the Reality Xiaobai one-click installation script. This script is designed to streamline the installation process, making it easier and faster for users to get their systems up and running. Currently, this script only provides configuration files used by meta clients. In this article, we will guide you on how to use this script.

## System Requirements

Before we begin, it's important to note that this script is only supported on Ubuntu systems. Therefore, ensure that you have an Ubuntu system ready for the installation.

## Logging into VPS

The first step is to log into your Virtual Private Server (VPS). This can be done using your preferred SSH client.

## Running the Installation Command

Once logged into your VPS, enter the following command:

```bash
sudo curl -o installReality.sh https://raw.githubusercontent.com/BoxXt/installReality/main/installReality.sh && sh ./installReality.sh
```

This command will download the installation script and execute it. Simply follow the instructions provided during the installation process.

## Meta Client Configuration

After the installation, you will receive a Meta client configuration file. You can import this file into any client that supports Clash.meta.

## BBR Acceleration

One of the key features of this script is that it automatically enables BBR acceleration. This feature optimizes your network speed, ensuring that you get the best performance out of your system.

## Debugging

In case you encounter any issues, the script provides several commands for debugging:

- To start the service, use `systemctl start sing-box`
- To stop the service, use `systemctl stop sing-box`
- To forcefully stop the service, use `systemctl kill sing-box`
- To restart the service, use `systemctl restart sing-box`
- To view real-time logs, use `journalctl -u sing-box --output cat -f`

## Client Support

The script currently supports exporting clash.meta client configuration for use by meta clients. The list of available clients (which are still being tested and supplemented) includes:

- macOS: [ClashX.Meta](https://github.com/MetaCubeX/ClashX.Meta/releases) (The kernel version needs to be updated to the latest version of alpha)
- Windows: [Clash Verage](https://github.com/zzzgydi/clash-verge/releases) (The kernel version needs to be updated to the latest version of alpha)
- iOS: [Singbox](https://testflight.apple.com/join/c6ylui2j) for iOS with Singbox config, [Pharos Pro](https://apps.apple.com/app/pharos-pro/id1456610173) with Clash.Meta config
- Android: [ClashMetaForAndroid]((https://github.com/MetaCubeX/ClashMetaForAndroid/releases) (Needs to be updated to the latest version)

## Additional Features

The script also supports custom domain names and the output of singbox client configurations. It also supports gRPC, a high-performance, open-source universal RPC framework.

In conclusion, the Reality Xiaobai one-click installation script is a powerful tool that simplifies the installation process, making it easier for users to get their systems up and running. With its automatic BBR acceleration and support for various clients, it's a must-have tool for any tech enthusiast.
