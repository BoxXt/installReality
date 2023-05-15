

# Reality 小白一键安装脚本（目前仅提供meta客户端使用的配置文件）
# [English‘s Readme](https://github.com/BoxXt/installReality/blob/main/readme.en.md)


## 如何使用脚本
* 系统仅支持: Ubuntu
* 登录vps
* 输入以下指令,并按照指令提示操作即可
  ```
  sudo curl -o installReality.sh https://raw.githubusercontent.com/BoxXt/installReality/main/installReality.sh && sh ./installReality.sh
  ```
* 最终得到 Meta 的客户端配置文件，选用支持 Clash.meta 的客户端导入使用即可
* 脚本内已自动开启BBR加速

## 调试
```yaml
#启动
systemctl start sing-box
#停止
systemctl stop sing-box
#强制停止
systemctl kill sing-box
#重启
systemctl restart sing-box
#实时日志
journalctl -u sing-box --output cat -f
```
## 客户端
  能力有限目前暂时支持输出clash.meta客户端配置给到meta客户端使用，可使用客户端列表（待测试补充）：
  * macOS:
  [ClashX.Meta](https://github.com/MetaCubeX/ClashX.Meta/releases/tag/v1.2.1)
    * 需要更新内核版本为alpha最新版本。
    
  * Windows:
  [Clash Verage](https://github.com/zzzgydi/clash-verge/releases/tag/v1.2.3)
    * 需要更新内核版本为alpha最新版本。
    
  * iOS:
    * [Singbox for iOS](https://testflight.apple.com/join/c6ylui2j) 配合 [Singbox config](https://sing-box.sagernet.org/configuration/inbound/hysteria/)
    * [Pharos Pro](https://apps.apple.com/app/pharos-pro/id1456610173) 配合 [Clash.Meta config](https://docs.metacubex.one/function/proxy/hysteria)
  
  * Android:
    [ClashMetaForAndroid](https://github.com/MetaCubeX/ClashMetaForAndroid/releases/tag/Prerelease-alpha)
    * 需要更新至最新版本。
    

 ## TODO
  * 自定义域名
  * 支持输出 singbox 客户端配置
  * 支持 grpc
## ======================English=================================
# Reality one-click installation script (currently only the configuration file used by the meta client is available)

## How to use the script
* System only support: Ubuntu
* Login to vps
* Enter the following command, and follow the instructions
  ```
  sudo curl -o installReality.sh https://raw.githubusercontent.com/BoxXt/installReality/main/installReality.sh && sh . /installReality.sh
  ```
* Finally get the Meta client configuration file and import it with a client that supports Clash.meta.
* BBR acceleration is automatically enabled in the script

## Debug
```yaml
# Start
systemctl start sing-box
# stop
systemctl stop sing-box
#Forced stop
systemctl kill sing-box
#restart
systemctl restart sing-box
#Real-time logging
journalctl -u sing-box --output cat -f
```
## Client
  Limited capacity currently supports output clash.meta client configuration to the meta client for the time being, the list of available clients (to be tested and added) are
  * macOS.
  [ClashX.Meta](https://github.com/MetaCubeX/ClashX.Meta/releases/tag/v1.2.1)
    * Need to update the kernel version to the latest version of alpha.
    
  * Windows.
  [Clash Verage](https://github.com/zzzgydi/clash-verge/releases/tag/v1.2.3)
    * Need to update the kernel version to the latest version of alpha.
    
  * iOS.
    * [Singbox for iOS](https://testflight.apple.com/join/c6ylui2j) with [Singbox config](https://sing-box.sagernet.org/configuration/inbound/hysteria/)
    * [Pharos Pro](https://apps.apple.com/app/pharos-pro/id1456610173) with [Clash.Meta config](https://docs.metacubex.one/function/proxy/hysteria)
  
  * Android.
    [ClashMetaForAndroid](https://github.com/MetaCubeX/ClashMetaForAndroid/releases/tag/Prerelease-alpha)
    * Need to update to the latest version.
    

 ## TODO
  * Custom domain name
  * Support for exporting singbox client configuration
  * Support for grpc

