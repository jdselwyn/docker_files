cd docker_files
git pull
cd ..
newDock=$(ls -dtr1 docker_files/* | tail -1)
the_name=${newDock##*_}
cp -p ${newDock} Dockerfile
docker build -t ${the_name} .
