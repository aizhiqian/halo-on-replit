echo "Halo 博客一键搭建脚本"
echo "脚本作者：知性"
echo "GitHub开源地址：https://github.com/aizhiqian/halo-on-replit"
nix-env -iA nixpkgs.wget
mkdir build
cd build
wget -O .replit https://raw.githubusercontent.com/aizhiqian/halo-on-replit/main/.replit
wget -O replit.nix https://raw.githubusercontent.com/aizhiqian/halo-on-replit/main/replit.nix
cd ..
wget -O main.sh https://raw.githubusercontent.com/aizhiqian/halo-on-replit/main/main.sh
wget -O update.sh https://raw.githubusercontent.com/aizhiqian/halo-on-replit/main/update.sh
wget -O halo.jar https://github.com/aizhiqian/halo-on-replit/releases/latest/download/halo.jar
cp -r build/.replit . && cp -r build/replit.nix .
rm -rf build/
echo "首次搭建需要在Secrets设置环境变量"
echo "设置账号和密码的环境变量，点Run启动Halo项目！！！"
echo "Halo博客一键搭建脚本"
echo "脚本作者：知性"
echo "GitHub开源地址：https://github.com/aizhiqian/halo-on-replit"
rm -rf README.md
