chmod +x /srv/chrisipowell_api/bin/chrisipowell_api
cp /srv/chrisipowell_api/chrisipowell_api.service /lib/systemd/system/
systemctl daemon-reload
