# Mopidy pour YunoHost

[![Niveau d'intégration](https://dash.yunohost.org/integration/mopidy.svg)](https://dash.yunohost.org/appci/app/mopidy) ![](https://ci-apps.yunohost.org/ci/badges/mopidy.status.svg) ![](https://ci-apps.yunohost.org/ci/badges/mopidy.maintain.svg)  
[![Installer Mopidy avec YunoHost](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=mopidy)

*[Read this readme in english.](./README.md)* 

> *Ce package vous permet d'installer Mopidy rapidement et simplement sur un serveur YunoHost.  
Si vous n'avez pas YunoHost, consultez [le guide](https://yunohost.org/#/install) pour apprendre comment l'installer.*

## Vue d'ensemble
Mopidy - est un serveur de musique extensible. Mopidy lit de la musique, des podcasts et des programmes de radio à partir d'un disque local et de divers services de streaming.
Vous pouvez modifier la liste de lecture à partir d'un téléphone, d'une tablette ou d'un ordinateur.
Vous entendez la musique via les haut-parleurs connectés au serveur.

**Version incluse :** 3.1.1

## Captures d'écran

![](sources/extra_files/mopidy_screenshot1.png)

## Démo

* Aucune démo disponible

## Configuration

Cette installation est livrée avec différentes extensions:

* [MusicBox-Webclient](https://mopidy.com/ext/musicbox-webclient/) pour contrôler mopidy depuis votre navigateur Web
* [local](https://mopidy.com/ext/local/) pour rendre votre collection de musique privée sur `/home/yunohost.multimedia/share/Music/` consultable
* [YouTube](https://pypi.org/project/Mopidy-YouTube/) pour lire le son de YouTube
* [YTMusic](https://music.youtube.com/) pour accéder à la musique en streaming de Google intitulée [YouTube Music](https://music.youtube.com/) 
* [Podcast-iTunes](https://mopidy.com/ext/podcast-itunes/) pour rechercher et parcourir des podcasts sur l'iTunes Store d'Apple
* [RadioNet](https://mopidy.com/ext/radionet/) pour écouter les canaux radio de [radio.net](https://www.radio.net/)
* [Podcast](https://mopidy.com/ext/podcast/) pour parcourir les flux RSS des podcasts et diffuser les épisodes
* [Soundcloud](https://pypi.org/project/Mopidy-SoundCloud/) pour lire de la musique à partir du service [SoundCloud](https://soundcloud.com/) service \([jeton d'authentification](https://pypi.org/project/Mopidy-SoundCloud/) nécessaire\).


## Documentation

 * Documentation officielle : https://docs.mopidy.com/en/latest/

## Caractéristiques spécifiques YunoHost

#### Support multi-utilisateur

* L'authentification LDAP et HTTP est-elle prise en charge ? **Non**
* L'application peut-elle être utilisée par plusieurs utilisateurs ?

#### Architectures supportées

* x86-64 - [![Build Status](https://ci-apps.yunohost.org/ci/logs/mopidy.svg)](https://ci-apps.yunohost.org/ci/apps/mopidy/)
* ARMv8-A - [![Build Status](https://ci-apps-arm.yunohost.org/ci/logs/mopidy.svg)](https://ci-apps-arm.yunohost.org/ci/apps/mopidy/)

## Limitations

* Ne peut pas être utilisé avec des VPS ou d'autres serveurs qui n'ont pas de matériel audio réel

## Informations additionnelles

* Pour lister les paramètres actuels, entrez  `sudo mopidyctl config`
* Modifiez le fichier `/opt/yunohost/mopidy/mopidy.conf` pour ajuster la configuration de mopidy
* Pour reconstruire la base de données de votre collection de musique locale, entrez `sudo mopidyctl local scan`

## Liens

 * Signaler un bug : https://github.com/YunoHost-Apps/mopidy_ynh/issues
 * Site de l'application : https://mopidy.com/
 * Site web YunoHost : https://yunohost.org/

---

## Informations pour les développeurs

Merci de faire vos pull request sur la [branche testing](https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing).

Pour essayer la branche testing, procédez comme suit.
```
sudo yunohost app install https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
ou
sudo yunohost app upgrade mopidy -u https://github.com/YunoHost-Apps/mopidy_ynh/tree/testing --debug
```
