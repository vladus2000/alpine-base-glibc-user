#!/bin/ash
if [[ -z "${PUID}" ]]; then
	$*
else
	/runuser.sh user $*
fi
