#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

# dependencies used by the app
pkg_dependencies="acl build-essential python3-dev python3-pip python3-venv git postgresql postgresql-contrib \
gir1.2-gst-plugins-base-1.0 gir1.2-gstreamer-1.0 gstreamer1.0-plugins-good gstreamer1.0-plugins-ugly lsb-base \
python3-gst-1.0 python3-tornado debconf python3-pkg-resources python3-pykka python3-requests \
gstreamer1.0-alsa gstreamer1.0-pulseaudio gstreamer1.0-tools libcairo2-dev libffi-dev libgirepository1.0-dev libglib2.0-dev"

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
 	$final_path/env/bin/python3 -m pip install wheel
	$final_path/env/bin/python3 -m pip install vext
	$final_path/env/bin/python3 -m pip install --no-binary=:all: vext.gi
 	$final_path/env/bin/python3 -m pip install --ignore-installed --no-cache pygobject

	# install essential packages
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-local
 	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-MPD
	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-MusicBox-Webclient
#	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-YouTube
#	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-YTMusic
#	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-RadioNet
#	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast
#	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast-iTunes
#	ynh_exec_as $app $final_path/env/bin/python3 -m pip install --no-cache-dir Mopidy-SoundCloud
	)
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
