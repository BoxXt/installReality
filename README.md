# Reality 小白一键安装脚本（目前仅提供meta客户端使用的配置文件）

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
    * [Singbox]() 
      * 需要自己手搓Singbox客户端配置。  
    * [Pharos Pro]()
      * 商店版本在1.7.9以上可用。
  
  * Android:
    [ClashMetaForAndroid](https://github.com/MetaCubeX/ClashMetaForAndroid/releases/tag/Prerelease-alpha)
    * 需要更新至最新版本。
    

 ## TODO
  * 自定义域名
  * 支持输出 singbox 客户端配置
  * 支持 grpc
## ======================English=================================
# Reality White one-click installation script (currently only the configuration file used by the meta client is available)

## How to use the script
* System only support: Ubuntu
* Login to vps
* Enter the following command, and follow the instructions
  ```
  sudo curl -o installReality.sh https://raw.githubusercontent.com/BoxXt/installReality/main/installReality.sh && sh . /installReality.sh
  `` ` `
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
    * [Singbox]() 
      * Need to hand-roll the Singbox client configuration yourself.  
    * [Pharos Pro]()
      * Store version available at 1.7.9 or higher.
  
  * Android.
    [ClashMetaForAndroid](https://github.com/MetaCubeX/ClashMetaForAndroid/releases/tag/Prerelease-alpha)
    * Need to update to the latest version.
    

 ## TODO
  * Custom domain name
  * Support for exporting singbox client configuration
  * Support for grpc

Translated with www.DeepL.com/Translator (free version)
