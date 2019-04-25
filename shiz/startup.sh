/fixuser.sh user
if [ -x /initialize.sh ]; then
	/initialize.sh
fi
while true
do
	$STARTUP_CMD
	sleep 1
done
