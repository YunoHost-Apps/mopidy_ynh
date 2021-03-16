#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# dependencies used by the app
pkg_dependencies="build-essential python3-dev python3-pip python3-venv git postgresql postgresql-contrib \
                  gir1.2-gst-plugins-base-1.0 gir1.2-gstreamer-1.0 gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly lsb-base \
		  python3-gst-1.0 python3-tornado (>= 4.4) debconf python3-pkg-resources python3-pykka python3-requests \
		  gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-tools"
		  
#=================================================
# PERSONAL HELPERS
#=================================================

python_version="$(python3 -V | cut -d' ' -f2 | cut -d. -f1-2)"

myynh_install() {
    ynh_script_progression --message="Install / upgrade mopidy via pip..."  --time --weight=1
    python3 -m venv "${final_path}/env"
    chown -R "$app" "$final_path"

#run source in a 'sub shell'
    (
        set +o nounset
        source "${final_path}/env/bin/activate"
        set -o nounset
        ynh_exec_as $app $final_path/env/bin/pip install --upgrade --no-cache-dir pip

        ynh_script_progression --message="Installing essentials..." --time --weight=1
        
	# to make Gstreamer visible in Python environment
        $final_path/env/bin/python3 -m pip install vext
	$final_path/env/bin/python3 -m pip install --no-binary=:all: vext.gi

        # install essential packages
        ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy==3.1.1
	patch -u $final_path/env/lib/python$python_version/site-packages/mopidy/__main__.py -i ../sources/patches/__main__.patch
	
        ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-local==3.2.1
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-MusicBox-Webclient==3.1.0
	ynh_script_progression --message="Installing Mopidy-YouTube..." --time --weight=1
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-YouTube==3.2
	ynh_script_progression --message="Installing Mopidy-YTMusic..." --time --weight=1
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-YTMusic==0.2.2
	ynh_script_progression --message="Installing Mopidy-RadioNet..." --time --weight=1
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-RadioNet==0.2.2
	ynh_script_progression --message="Installing Mopidy-Podcast..." --time --weight=1
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast==3.0.0
	ynh_script_progression --message="Installing Mopidy-Podcast-iTunes..." --time --weight=1
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast-iTunes==3.0.0
	ynh_script_progression --message="Installing Mopidy-SoundCloud..." --time --time --weight=1
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-SoundCloud
#	ynh_script_progression --message="Installing Mopidy-Spotify..." --time --weight=1
#	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Spotify   Spotify Lib currently not available!!

#	if [ -n "$(uname -m | grep arm)" ];		# check CPU (raspberry is armxx)
#  	    then
#    	    ynh_script_progression --message="Installing Mopidy-Raspberry-GPIO..." --time --weight=1
#	    ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Raspberry-GPIO
#  	fi
	
	
#	set +o nounset
#	source "${final_path}/env/bin/deactivate"
#	set -o nounset
    )
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================

#=================================================
# YUNOHOST MULTIMEDIA INTEGRATION
#=================================================

# Install or update the main directory yunohost.multimedia
# see https://github.com/YunoHost-Apps/yunohost.multimedia
ynh_multimedia_build_main_dir () {
    wget -nv https://github.com/maniackcrudelis/yunohost.multimedia/archive/master.zip 2>&1
    unzip master.zip
    sudo ./yunohost.multimedia-master/script/ynh_media_build.sh
}
