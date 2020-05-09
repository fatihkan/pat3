#!/bin/bash

# STATUS="Status: Downloaded newer image for bigbluebutton/greenlight:v2"

# new_status=$(sudo docker pull bigbluebutton/greenlight:v2 | grep Status:)

# echo $new_status

# if [ "$STATUS" == "$new_status" ]
# then
  cd /home/ubuntu/web
  sudo docker-compose down
  # sudo docker rmi $(sudo docker web -f dangling=true -q)
  sudo ./scripts/image_build.sh web release-v2 
  sudo docker-compose up -d
# fi

exit 0
