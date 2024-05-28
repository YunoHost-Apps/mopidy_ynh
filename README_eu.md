<!--
Ohart ongi: README hau automatikoki sortu da <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>ri esker
EZ editatu eskuz.
-->

# Mopidy YunoHost-erako

[![Integrazio maila](https://dash.yunohost.org/integration/mopidy.svg)](https://dash.yunohost.org/appci/app/mopidy) ![Funtzionamendu egoera](https://ci-apps.yunohost.org/ci/badges/mopidy.status.svg) ![Mantentze egoera](https://ci-apps.yunohost.org/ci/badges/mopidy.maintain.svg)

[![Instalatu Mopidy YunoHost-ekin](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mopidy)

*[Irakurri README hau beste hizkuntzatan.](./ALL_README.md)*

> *Pakete honek Mopidy YunoHost zerbitzari batean azkar eta zailtasunik gabe instalatzea ahalbidetzen dizu.*  
> *YunoHost ez baduzu, kontsultatu [gida](https://yunohost.org/install) nola instalatu ikasteko.*

## Aurreikuspena

Mopidy is an extensible music server written in Python.

Mopidy plays music from local disk, Spotify, SoundCloud, Google Play Music, and more. You edit the playlist from any phone, tablet, or computer using a variety of MPD and web clients.


**Paketatutako bertsioa:** 3.4.2~ynh4

## Pantaila-argazkiak

![Mopidy(r)en pantaila-argazkia](./doc/screenshots/mopidy_screenshot1.png)

## Dokumentazioa eta baliabideak

- Aplikazioaren webgune ofiziala: <https://www.mopidy.com>
- Administratzaileen dokumentazio ofiziala: <https://docs.mopidy.com/en/latest>
- Jatorrizko aplikazioaren kode-gordailua: <https://github.com/mopidy/mopidy>
- YunoHost Denda: <https://apps.yunohost.org/app/mopidy>
- Eman errore baten berri: <https://github.com/YunoHost-Apps/mopidy_ynh/issues>

## Garatzaileentzako informazioa

Bidali `pull request`a [`testing` abarrera](https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing).

`testing` abarra probatzeko, ondorengoa egin:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
edo
sudo yunohost app upgrade mopidy -u https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
```

**Informazio gehiago aplikazioaren paketatzeari buruz:** <https://yunohost.org/packaging_apps>
