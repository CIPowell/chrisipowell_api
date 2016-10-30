if ( initctl status node-App | grep start ); then
  initctl stop node-App
fi
