if ( initctl status chrisipowell_api | grep start ); then
  initctl stop chrisipowell_api
fi
