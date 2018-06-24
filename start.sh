/opt/lampp/bin/mysql.server restart
sleep 5;
/root/myqd &
sleep 60;
/opt/lampp/lampp start &

while true; do foo; sleep 60; done
