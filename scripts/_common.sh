#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================
# dependencies used by the app
pkg_dependencies="acl build-essential python3-dev python3-pip python3-venv git postgresql postgresql-contrib \
                  gir1.2-gst-plugins-base-1.0 gir1.2-gstreamer-1.0 gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly lsb-base \
		  python3-gst-1.0 python3-tornado debconf python3-pkg-resources python3-pykka python3-requests \
		  gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-tools"
		  
#=================================================
# PERSONAL HELPERS
#=================================================

python_version="$(python3 -V | cut -d' ' -f2 | cut -d. -f1-2)"

myynh_install() {
    python3 -m venv "${final_path}/env"
    chown -R "$app" "$final_path"

    #run source in a 'sub shell'
    (
	set +o nounset
	source "${final_path}/env/bin/activate"
	set -o nounset
	ynh_exec_as $app $final_path/env/bin/pip install --upgrade --no-cache-dir pip
        
	# to make Gstreamer visible in Python environment
	$final_path/env/bin/python3 -m pip install vext
	$final_path/env/bin/python3 -m pip install --no-binary=:all: vext.gi

	# install essential packages
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy==3.2.0
        
        ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-local==3.2.1
    	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-MusicBox-Webclient==3.1.0
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-YouTube==3.3
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir mopidy-ytmusic==0.3.0
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-RadioNet==0.2.2
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast==3.0.0
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast-iTunes==3.0.0
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-SoundCloud==3.0.1
    )
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
