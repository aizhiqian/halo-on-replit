<p align="center">
    <a href="https://halo.run" target="_blank" rel="noopener noreferrer">
        <img width="100" src="https://halo.run/logo" alt="Halo logo" />
    </a>
</p>


<p align="center"><b>Halo</b> [ˈheɪloʊ]，强大易用的开源建站工具。</p>

<p align="center">
<a href="https://github.com/aizhiqian/halo-on-replit/releases"><img alt="GitHub release" src="https://img.shields.io/github/release/halo-dev/halo.svg?style=flat-square&include_prereleases" /></a>
<br />
<a href="https://halo.run">官网</a>
<a href="https://docs.halo.run">文档</a>
<a href="https://bbs.halo.run">社区</a>
<a href="https://gitee.com/halo-dev">Gitee</a>
<a href="https://t.me/halo_dev">Telegram 频道</a>
</p>


------------------------------

## 预览

[知性博客](https://halo.aiguohou4.repl.co/)

## 生态

可访问 [官方应用市场](https://halo.run/store/apps) 或 [awesome-halo 仓库](https://github.com/halo-sigs/awesome-halo) 查看已经适用于 Halo 2.x 的主题和插件，以及适用于 Halo 1.x 的相关仓库。

## 编译

[构建文档](https://docs.halo.run/developer-guide/core/build)

## 使用说明

Halo-On-Replit Jar是我重新用官方仓库：[https://github.com/halo-dev/halo](https://github.com/halo-dev/halo) 编译打包的。   
因为Replit使用官方的 Jar，过几小时就会重置一次数据库（有时候几十分钟），我把文件`application/src/main/resources/application.yaml`中的工作目录（work-dir）改为`/home/runner/${REPL_SLUG}/.halo2`从根源上解决了反复重置数据库的问题。

一键安装脚本 (环境选择`Bash` 或 `Blank Repl`)   

```bash
bash <(curl -s https://raw.githubusercontent.com/aizhiqian/halo-on-replit/main/install.sh)
```

Halo一键升级脚本

```bash
bash <(curl -s https://raw.githubusercontent.com/aizhiqian/halo-on-replit/main/update.sh)
```

## Halo2.0以上版本自定义密码

Halo文档演示是这样的:

```bash
--halo.security.initializer.superadminusername=admin
--halo.security.initializer.superadminpassword=P@88w0rd
```

但因为replit免费版是公开可见的，所以这样设置明文任何人都会看到你的账户和密码。
所以需要在`Secrets`这里设置环境变量内容如下：
![](https://img.l04.repl.co/img/2023-03-01110916.png)
![](https://img.l04.repl.co/img/2023-03-01111027.png)

`test`仅作为演示的管理员用户名，`test123456`仅作为演示的管理员密码
设置好自己的管理员用户名及密码，点击Run按钮就可以了！

## 自定义网址说明

`--halo.external-url=http://localhost:8090/`
例如:

```bash
java -jar halo.jar --halo.external-url=https://xxx.com/ --halo.security.initializer.superadminusername=${username} --halo.security.initializer.superadminpassword=${password}
```

`https://xxx.com/`设置成为你绑定replit的域名就可以了。
