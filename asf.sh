#!/bin/bash
wget https://github.com/JustArchi/ArchiSteamFarm/releases/download/3.0.4.3/ASF-linux-x64.zip
apt-get install libunwind8 libunwind8-dev gettext libicu-dev liblttng-ust-dev libcurl4-openssl-dev libssl-dev uuid-dev unzip screen -y
apt-get purge libssl1.0.0
unzip ASF-linux-x64.zip -d ASF/
cd ASF/ 
chmod +x ArchiSteamFarm
echo -e "请用ftp工具将配置文件（json/2FA）上传"
echo -e "退出请输入 ctrl+c"
./ArchiSteamFarm
