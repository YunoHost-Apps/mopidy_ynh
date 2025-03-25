<!--
N.B.: Diese README wurde automatisch von <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> generiert.
Sie darf NICHT von Hand bearbeitet werden.
-->

# Mopidy für YunoHost

[![Integrations-Level](https://apps.yunohost.org/badge/integration/mopidy)](https://ci-apps.yunohost.org/ci/apps/mopidy/)
![Funktionsstatus](https://apps.yunohost.org/badge/state/mopidy)
![Wartungsstatus](https://apps.yunohost.org/badge/maintained/mopidy)

[![Mopidy mit YunoHost installieren](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mopidy)

*[Dieses README in anderen Sprachen lesen.](./ALL_README.md)*

> *Mit diesem Paket können Sie Mopidy schnell und einfach auf einem YunoHost-Server installieren.*  
> *Wenn Sie YunoHost nicht haben, lesen Sie bitte [die Anleitung](https://yunohost.org/install), um zu erfahren, wie Sie es installieren.*

## Übersicht

Mopidy is an extensible music server written in Python.

Mopidy plays music from local disk, Spotify, SoundCloud, Google Play Music, and more. You edit the playlist from any phone, tablet, or computer using a variety of MPD and web clients.


**Ausgelieferte Version:** 3.4.2~ynh6

## Bildschirmfotos

![Bildschirmfotos von Mopidy](./doc/screenshots/mopidy_screenshot1.png)

## Dokumentation und Ressourcen

- Offizielle Website der App: <https://www.mopidy.com>
- Offizielle Verwaltungsdokumentation: <https://docs.mopidy.com/en/latest>
- Upstream App Repository: <https://github.com/mopidy/mopidy>
- YunoHost-Shop: <https://apps.yunohost.org/app/mopidy>
- Einen Fehler melden: <https://github.com/YunoHost-Apps/mopidy_ynh/issues>

## Entwicklerinformationen

Bitte senden Sie Ihren Pull-Request an den [`testing` branch](https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing).

Um den `testing` Branch auszuprobieren, gehen Sie bitte wie folgt vor:

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
oder
sudo yunohost app upgrade mopidy -u https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
```

**Weitere Informationen zur App-Paketierung:** <https://yunohost.org/packaging_apps>
