#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

boolstr=(false true)

cmd_file="/usr/local/bin/mopidyctl"

media_dir="/home/yunohost.multimedia/share/Music"

_mopidy_install() {
    ynh_exec_as_app python3 -m venv "$install_dir/venv"
    ynh_hide_warnings ynh_exec_as_app "$install_dir/venv/bin/pip" install --upgrade --no-cache-dir pip

    # install essential packages
    ynh_hide_warnings ynh_exec_as_app "$install_dir/venv/bin/pip" install --no-cache-dir \
        Mopidy=="$(ynh_app_upstream_version)" \
        Mopidy-local==4.0.1 \
        Mopidy-MusicBox-Webclient==3.1.0 \
        Mopidy-YouTube==4.0.4 \
        Mopidy-Podcast==4.0.0 \
        Mopidy-Podcast-iTunes==4.0.0 \
        Mopidy-SoundCloud==4.0.0 \
        Mopidy-MPD==4.1.0
}
