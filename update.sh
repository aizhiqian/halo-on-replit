echo "Halo一键更新脚本"
echo "脚本作者：知性"
echo "GitHub开源地址：https://github.com/aizhiqian/halo-on-replit"
rm -rf halo.jar
if [ ! -e halo.jar ];then
    if [ $# -eq 1 ]; then
      # 下载指定版本
      version=$1
    else
      # 下载最新版
      version="$(curl -fsSLI -o /dev/null -w "%{url_effective}" https://github.com/aizhiqian/halo-on-replit/releases/latest)"
      version="${version#https://github.com/aizhiqian/halo-on-replit/releases/tag/}"
    fi
    wget -O halo.jar https://github.com/aizhiqian/halo-on-replit/releases/download/${version}/halo.jar
fi
echo "Halo 已更新至 ${version}，更新完毕！"
echo "点击Run按钮重新启动本项目！！！"
