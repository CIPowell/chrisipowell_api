if ( initctl status chrisipowell_api | grep stop ); then
  initctl start chrisipowell_api
fi
