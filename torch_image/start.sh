# build docker image
# docker image build --file Dockerfile.txt --tag ml-workbench .

# start the docker container:
#   -d in detached mode (this frees the current session)
#   -p 8888:8888 map host port 8888 to container port 8888 (for Jupyter)
#   -p 6006:6006 map host port 6006 to container port 6006 (for tensorboard)
docker run -d --name ml-workbench -v [ABSOLUTE PROJECT PATH GOES HERE]:/root/shared_dir -p 8000:8888 -p 6000:6006 ml-workbench

# display the login token for the jupyter notebook session
docker exec ml-workbench jupyter notebook list