CURRENT_INSTANCE=$(sudo docker ps -a -q --filter ancestor="$IMAGE_NAME" --format="{{.iD}}")

if ["CURRENT_INSTANCE"]
then
  sudo docket rm $(sudo docker stop $CURRENT_INSTANCE)
 
 if
 sudo docker pull $IMAGE_NAME
 
 CONTAINER_EXISTS=$(sudo docker ps -a | grep $CONTAINER_NAME)
 if [ "$CONTAINER_EXISTS" ]
 then
  sudo docker rm $CONTAINER_NAME
 
 if
 sudo docker run -p 3000:3000 -d --name $CONTAINER_NAME $IMAGE_NAME
 
