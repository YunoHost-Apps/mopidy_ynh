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
    ynh_hide_warnings ynh_exec_as_app "$install_dir/venv/bin/pip" install --upgrade PyGObject==3.50.0

    # Temporary workaround for the missing pkg_resources (as of isso 0.13.0)
    ynh_hide_warnings ynh_exec_as_app "$install_dir/venv/bin/pip" install setuptools==80.0.0

    # install essential packages
    ynh_hide_warnings ynh_exec_as_app "$install_dir/venv/bin/pip" install --no-cache-dir \
        Mopidy=="$(ynh_app_upstream_version)" \
        Mopidy-local==3.2.1 \
        Mopidy-MusicBox-Webclient==3.1.0 \
        Mopidy-YouTube==3.7 \
        Mopidy-YTMusic==0.3.8 \
        Mopidy-RadioNet==0.2.2 \
        Mopidy-Podcast==3.0.1 \
        Mopidy-Podcast-iTunes==3.0.1 \
        Mopidy-SoundCloud==3.0.2 \
        Mopidy-MPD==3.3.0
}
