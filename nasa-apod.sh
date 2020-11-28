#!/usr/bin/env bash

# Sway Nasa Astronomy Picture of the Day background
# requires curl, pcre and sway

# exit on error
set -e

# check for correct usage
if [[ ! -w "$1" ]] ; then
	echo "usage: ${0##*/} /path/to/writable/image/directory"
	exit 1
else
	# change ~ to /home/user/
	if [[ $1 =~ ^~ ]] ; then
		# shellcheck disable=2086
		1=${1/\~/$HOME}
	fi
	local_image_path=$1/nasa-apod.jpg
fi

URL='https://apod.nasa.gov/apod/astropix.html'
regex='<IMG SRC="(.*)"'

image_path=$(curl ${URL} 2>/dev/null | pcregrep --only-matching=1 "$regex")

image_url="https://apod.nasa.gov/apod/$image_path"

curl --silent --output "$local_image_path" "$image_url"

swaymsg "output * background $local_image_path center #323232"
