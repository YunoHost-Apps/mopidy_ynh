#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

boolstr=(false true)

cmd_file="/usr/local/bin/mopidyctl"

media_dir="/home/yunohost.multimedia/share/Music"

#=================================================
# PERSONAL HELPERS
#=================================================

_mopidy_install() {
    python3 -m venv --upgrade "$install_dir/venv"
    chown -R "$app" "$install_dir"

    venvpy="$install_dir/venv/bin/python3"

    ynh_exec_as "$app" "$venvpy" -m pip install --upgrade --no-cache-dir pip

    ynh_exec_as "$app" "$venvpy" -m pip install PyGObject

    # install essential packages
    ynh_exec_as "$app" "$venvpy" -m pip install --no-cache-dir \
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

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
