# Reality 小白一键安装脚本（目前仅提供meta客户端使用的配置文件）

## 如何使用脚本
* 系统仅支持: Ubuntu
* 登录vps
* 输入以下指令,并按照指令提示操作即可
  * ```sudo curl -o installReality.sh https://raw.githubusercontent.com/BoxXt/installReality/main/installReality.sh && sh ./installReality.sh```
* 将所获得meta配置文件中的sever修改为 vps ip 地址。

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
      * 需要在软件内发邮件申请到TF版本，策略配置中导入meta配置使用。
  
  * Android:
    [ClashMetaForAndroid](https://github.com/MetaCubeX/ClashMetaForAndroid/releases/tag/Prerelease-alpha)
    * 需要更新至最新版本。
    

 ## TODO
  * BBR加速
  * 支持输出 singbox 客户端配置
  * 支持 grpc
  * 服务端支持 Xray 1.8.0
