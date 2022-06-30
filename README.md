# docker_files

Remove extension to build


Useful commands
```
docker build -t mirdeep2 . #run the Dockerfile and create an image named mirdeep2

docker run -it mirdeep2 /bin/bash #Interactively use the docker image mirdeep2 (useful for debugging)

docker tag mirdeep2 jdselwyn/mirdeep2 #tag docker image mirdeep2 to upload to dockerhub


```

On Discovery Commands
```
srun -t 4:00:00 --nodes=1 --cpus-per-task=40 --pty /bin/bash
module load singularity

singularity pull mirdeep2.sif docker://jdselwyn/mirdeep2:latest #pull an image (the latest mirdeep2 in this case) from docker and names it mirdeep2.sif

```

Use Docker image
```
module load singularity

CONTAINER=/work/vollmer/software/mirdeep2.sif
singularity exec ${CONTAINER} miRDeep2.pl
singularity exec ${CONTAINER} mapper.pl
singularity exec ${CONTAINER} quantifier.pl


singularity exec ${CONTAINER} echo $PATH
```
