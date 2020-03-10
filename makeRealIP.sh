IP=$( /sbin/ip route|awk '/default/ { print $3 }');

sed -i "4s/0.0.0.0/${IP}/g" ./server/settings.js
sed -i "5s/0.0.0.0/${IP}/g" ./server/settings.js
