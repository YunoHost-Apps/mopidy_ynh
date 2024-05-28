<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Mopidy

[![集成程度](https://dash.yunohost.org/integration/mopidy.svg)](https://dash.yunohost.org/appci/app/mopidy) ![工作状态](https://ci-apps.yunohost.org/ci/badges/mopidy.status.svg) ![维护状态](https://ci-apps.yunohost.org/ci/badges/mopidy.maintain.svg)

[![使用 YunoHost 安装 Mopidy](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mopidy)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Mopidy。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

Mopidy is an extensible music server written in Python.

Mopidy plays music from local disk, Spotify, SoundCloud, Google Play Music, and more. You edit the playlist from any phone, tablet, or computer using a variety of MPD and web clients.


**分发版本：** 3.4.2~ynh5

## 截图

![Mopidy 的截图](./doc/screenshots/mopidy_screenshot1.png)

## 文档与资源

- 官方应用网站： <https://www.mopidy.com>
- 官方管理文档： <https://docs.mopidy.com/en/latest>
- 上游应用代码库： <https://github.com/mopidy/mopidy>
- YunoHost 商店： <https://apps.yunohost.org/app/mopidy>
- 报告 bug： <https://github.com/YunoHost-Apps/mopidy_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
或
sudo yunohost app upgrade mopidy -u https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
