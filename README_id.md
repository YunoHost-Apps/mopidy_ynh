<!--
N.B.: README ini dibuat secara otomatis oleh <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Ini TIDAK boleh diedit dengan tangan.
-->

# Mopidy untuk YunoHost

[![Tingkat integrasi](https://apps.yunohost.org/badge/integration/mopidy)](https://ci-apps.yunohost.org/ci/apps/mopidy/)
![Status kerja](https://apps.yunohost.org/badge/state/mopidy)
![Status pemeliharaan](https://apps.yunohost.org/badge/maintained/mopidy)

[![Pasang Mopidy dengan YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mopidy)

*[Baca README ini dengan bahasa yang lain.](./ALL_README.md)*

> *Paket ini memperbolehkan Anda untuk memasang Mopidy secara cepat dan mudah pada server YunoHost.*  
> *Bila Anda tidak mempunyai YunoHost, silakan berkonsultasi dengan [panduan](https://yunohost.org/install) untuk mempelajari bagaimana untuk memasangnya.*

## Ringkasan

Mopidy is an extensible music server written in Python.

Mopidy plays music from local disk, Spotify, SoundCloud, Google Play Music, and more. You edit the playlist from any phone, tablet, or computer using a variety of MPD and web clients.


**Versi terkirim:** 3.4.2~ynh6

## Tangkapan Layar

![Tangkapan Layar pada Mopidy](./doc/screenshots/mopidy_screenshot1.png)

## Dokumentasi dan sumber daya

- Website aplikasi resmi: <https://www.mopidy.com>
- Dokumentasi admin resmi: <https://docs.mopidy.com/en/latest>
- Depot kode aplikasi hulu: <https://github.com/mopidy/mopidy>
- Gudang YunoHost: <https://apps.yunohost.org/app/mopidy>
- Laporkan bug: <https://github.com/YunoHost-Apps/mopidy_ynh/issues>

## Info developer

Silakan kirim pull request ke [`testing` branch](https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing).

Untuk mencoba branch `testing`, silakan dilanjutkan seperti:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
atau
sudo yunohost app upgrade mopidy -u https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
```

**Info lebih lanjut mengenai pemaketan aplikasi:** <https://yunohost.org/packaging_apps>
