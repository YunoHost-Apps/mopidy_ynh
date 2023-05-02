#!/bin/bash

#=================================================
# COMMON VARIABLES
#=================================================

#=================================================
# PERSONAL HELPERS
#=================================================

python_version="$(python3 -V | cut -d' ' -f2 | cut -d. -f1-2)"

myynh_install() {
	python3 -m venv "${install_dir}/env"
	chown -R "$app" "$install_dir"

	#run source in a 'sub shell'
	(
	set +o nounset
	source "${install_dir}/env/bin/activate"
	set -o nounset
	ynh_exec_as $app $install_dir/env/bin/pip install --upgrade --no-cache-dir pip

	# to make Gstreamer visible in Python environment
	$install_dir/env/bin/python3 -m pip install vext
	$install_dir/env/bin/python3 -m pip install --no-binary=:all: vext.gi

	# install essential packages
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy==$(ynh_app_upstream_version)
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-local==3.4.1
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-MusicBox-Webclient==3.1.0
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-YouTube==3.6.1
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir mopidy-ytmusic==0.3.8
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-RadioNet==0.2.2
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast==3.0.1
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-Podcast-iTunes==3.0.1
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-SoundCloud==3.0.2
	ynh_exec_as $app $install_dir/env/bin/python3 -m pip install --no-cache-dir Mopidy-MPD==3.3.0
	)
}

#=================================================
# EXPERIMENTAL HELPERS
#=================================================

#=================================================
# FUTURE OFFICIAL HELPERS
#=================================================
