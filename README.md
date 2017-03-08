# Mopidy for YunoHost

## Mopidy c'est quoi ?

Mopidy - est un serveur de musique extensible écrit en Python

Mopidy joue de la musique à partir de disque local, Spotify, SoundCloud, Google Play Musique, et plus encore. Vous pouvez modifier la liste de lecture à partir d'un téléphone, d'une tablette ou d'un ordinateur en utilisant une gamme de clients MPD et Web.

Source: [mopidy.com](https://www.mopidy.com)

Vous pouvez installer Mopidy sur un Raspberrypi pour lire de la musique chez vous. Branchez votre Raspberry sur votre système son, sur le bluetooth ou wifi et lancer l'interface web (Mopidy-MusicBox-Webclient) accessible dans l'interface utilisateur de YunoHost.

L'application YunoHost vous permet de vous connecter à Spotify (version premium seulement, la version free ne fonctionne pas) ou Soundcloud.

Pour récupérer vos clés pour Spotify et Soundcloud :

[Authentification Mopidy avec les services en ligne](https://www.mopidy.com/authenticate/)

Insérer les clés d'authentifications lors de l'installation de l'application.

### Vérifier que le sons fonctionne

Depuis l'interface web, aller dans "Browse" > "File" > "Media". Sur cette page vous avez un morceau qui est importé dans l'application lors de l'installation. Ce titre se nomme "Tryad Beauty", ce morceau est libre de droit. 

### Problème pouvant survenir

Il se peut que vous n'ayez pas de son, je vous invite à vous renseigner sur [la documentation de de Mopidy](https://docs.mopidy.com/en/latest/audio/).

### Pour les bidouilleurs

Les fichiers de configuration se trouve dans le répertoire /usr/share/mopidy/conf.d

## Why Mopidy?

Mopidy - is an extensible music server written in Python.

Mopidy plays music from local disk, Spotify, SoundCloud, Google Play Music, and more. You edit the playlist from any phone, tablet, or computer using a range of MPD and web clients.

Source: [mopidy.com](https://www.mopidy.com)

You can install Mopidy on a Raspberrypi to play music at home. Connect your Raspberry on your soundsystem, bluetooth or wifi and launch the web interface (Mopidy-MusicBox-Webclient) in the user interface of YunoHost.

The YunoHost application allows you to connect to Spotify (premium version only, free version does not work) or Soundcloud.

To retrieve your keys for Spotify and Soundcloud:

[Mopidy Authentication with Online Services] (https://www.mopidy.com/authenticate/)

Insert authentication keys when installing the application.

### Check that the sounds are working

From the web interface, go to "Browse"> "File"> "Media". On this page you have a song that is imported into the application during installation. This title is called "Tryad Beauty", this piece is free of rights.

### Troubleshooting

You may have no sound,check [Mopidy's documentation] (https://docs.mopidy.com/en/latest/audio/).

### For hackers

The configuration files can be found in the directory /usr/share/mopidy/conf.d

## Versionning

### Version 1.0.0 (06/03/17)

- Installation Mopidy and Mopidy-MusicBox-Webclient
- Use Spotify connexion
- Use SoundCloud connexion