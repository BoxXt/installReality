echo "欢迎使用BoxXt提供的小白一键搭建 Xray Reality 脚本"
echo "检查是否包含git环境"

if ! [ -x "$(command -v git)" ]; then
  echo '没有git环境, 正在安装git...' >&2
  sudo apt update
  sudo apt install git -y
fi
echo 'git已经安装完成'

echo '拉取singbox'
git clone https://github.com/SagerNet/sing-box
cd sing-box
git switch dev-next
echo "检查及自动安装go环境"
if ! [ -x "$(command -v go)" ]; then
  echo 'Installing Golang...' >&2
  curl -O https://golang.org/dl/go1.20.2.linux-amd64.tar.gz
  sudo tar -xvf go1.20.2.linux-amd64.tar.gz
  sudo mv go /usr/local
  rm go1.20.2.linux-amd64.tar.gz
  echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
  source ~/.bashrc
fi
echo 'go环境已经安装完成'

echo "安装singbox"
./release/local/install.sh

echo "启动singbox安装reality"
echo "生成密钥对,生成之后请保存好你的密钥对"
result=`sing-box generate reality-keypair`
echo $result
echo -n "是否已经保存好你的密钥对?[y/n]"
read name
echo -n "请输入你刚刚保存的密钥对的私钥（private_key）:"
read pkey
sed 's/\bpkey\b/$pkey/g' /usr/local/etc/sing-box/config.json

echo "生成uuid"
uuid=`sing-box generate uuid`
echo $uuid
echo -n "是否已经保存好你的uuid?[y/n]"
sed 's/\bpuuid\b/$uuid/g' /usr/local/etc/sing-box/config.json

echo "随机生成short_id"
echo "安装openssl"
sudo apt-get update && sudo apt-get install openssl
shortid=`openssl rand -hex 4`
echo $shortid
echo -n "是否已经保存好你的short_id?[y/n]"
sed 's/\bpshortid\b/$shortid/g' /usr/local/etc/sing-box/config.json

echo "完成配置，启动singbox"


systemctl start sing-box

echo "完成搭建"
echo "以下是支持reality的meta客户端所需要的配置信息："
echo "servername: www.microsoft.com"
echo "flow: xtls-rprx-vision"
echo "uuid: $uuid"
echo "key: $result"
echo "short_id: $shortid"




