<!--
Nota bene : ce README est automatiquement généré par <https://github.com/YunoHost/apps/tree/master/tools/readme_generator>
Il NE doit PAS être modifié à la main.
-->

# Mopidy pour YunoHost

[![Niveau d’intégration](https://dash.yunohost.org/integration/mopidy.svg)](https://dash.yunohost.org/appci/app/mopidy) ![Statut du fonctionnement](https://ci-apps.yunohost.org/ci/badges/mopidy.status.svg) ![Statut de maintenance](https://ci-apps.yunohost.org/ci/badges/mopidy.maintain.svg)

[![Installer Mopidy avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mopidy)

*[Lire le README dans d'autres langues.](./ALL_README.md)*

> *Ce package vous permet d’installer Mopidy rapidement et simplement sur un serveur YunoHost.*  
> *Si vous n’avez pas YunoHost, consultez [ce guide](https://yunohost.org/install) pour savoir comment l’installer et en profiter.*

## Vue d’ensemble

Mopidy is an extensible music server written in Python.

Mopidy plays music from local disk, Spotify, SoundCloud, Google Play Music, and more. You edit the playlist from any phone, tablet, or computer using a variety of MPD and web clients.


**Version incluse :** 3.4.2~ynh5

## Captures d’écran

![Capture d’écran de Mopidy](./doc/screenshots/mopidy_screenshot1.png)

## Documentations et ressources

- Site officiel de l’app : <https://www.mopidy.com>
- Documentation officielle de l’admin : <https://docs.mopidy.com/en/latest>
- Dépôt de code officiel de l’app : <https://github.com/mopidy/mopidy>
- YunoHost Store : <https://apps.yunohost.org/app/mopidy>
- Signaler un bug : <https://github.com/YunoHost-Apps/mopidy_ynh/issues>

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche `testing`](https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing).

Pour essayer la branche `testing`, procédez comme suit :

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mopidy -u https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
```

**Plus d’infos sur le packaging d’applications :** <https://yunohost.org/packaging_apps>
