# Mopidy for YunoHost

[![Integration level](https://dash.yunohost.org/integration/mopidy.svg)](https://dash.yunohost.org/appci/app/mopidy) ![](https://ci-apps.yunohost.org/ci/badges/mopidy.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/mopidy.maintain.svg)  
[![Install Mopidy with YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mopidy)

*[Lire ce readme en français.](./README_fr.md)*

> *This package allows you to install Mopidy quickly and simply on a YunoHost server.  
If you don't have YunoHost, please consult [the guide](https://yunohost.org/#/install) to learn how to install it.*

## Overview
Mopidy - is an extensible music server. It plays music, podcasts and radio programs from local disk and various streaming services. You edit the playlist from any phone, tablet, or computer.

**Shipped version:** 3.1.1

## Screenshots

![](sources/extra_files/mopidy_screenshot1.png)
## Demo

* No demo available

## Configuration

This installation is shipped with various extensions:

* [MusicBox-Webclient](https://mopidy.com/ext/musicbox-webclient/) to control mopidy from your web browser
* [local](https://mopidy.com/ext/local/) to make your private music collection on `/home/yunohost.multimedia/share/Music/` browseable and searchable
* [YouTube](https://pypi.org/project/Mopidy-YouTube/) to play sound from YouTube
* [YTMusic](https://music.youtube.com/) to access Google’s streaming music named [YouTube Music](https://music.youtube.com/) 
* [Podcast-iTunes](https://mopidy.com/ext/podcast-itunes/) to search and browse podcasts from the Apple iTunes Store.
* [RadioNet](https://mopidy.com/ext/radionet/) to play radio channels from the [radio.net](https://www.radio.net/).
* [Podcast](https://mopidy.com/ext/podcast/) to browse RSS feeds of podcasts and stream the episodes.
* [Soundcloud](https://pypi.org/project/Mopidy-SoundCloud/) to play music from the [SoundCloud](https://soundcloud.com/) service \([authentication token](https://pypi.org/project/Mopidy-SoundCloud/) needed\).

## Documentation

 * Official documentation: https://docs.mopidy.com/en/latest/

## YunoHost specific features

#### Multi-user support

* Are LDAP and HTTP auth supported? **No**
* Can the app be used by multiple users? ??

#### Supported architectures

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mopidy.svg)](https://ci-apps.yunohost.org/ci/apps/mopidy/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mopidy.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mopidy/)

## Limitations

* Any known limitations.

## Additional information

* To list current settings enter `sudo mopidyctl config`.
* Edit the file `/opt/yunohost/mopidy/mopidy.conf` to adjust Mopidy's configuration.
* To rebuild the database of your local music collection enter `sudo mopidyctl local scan`.

## Links

 * Report a bug: https://github.com/YunoHost-Apps/mopidy_ynh/issues
 * App website: https://mopidy.com/
 * YunoHost website: https://yunohost.org/

---

## Developer info

Please send your pull request to the [testing branch](https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing).

To try the testing branch, please proceed like that.
```
sudo yunohost app install https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
or
sudo yunohost app upgrade mopidy -u https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug

```
