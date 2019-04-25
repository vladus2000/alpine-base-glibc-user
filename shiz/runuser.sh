#/bin/ash
su-exec $1 /bin/ash -c "${*#$1}"
