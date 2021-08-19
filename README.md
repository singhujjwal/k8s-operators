# k8s-operators
## Ansible based Kubernetes operator

### Prerequisites
1. `sudo apt  update`
2. `sudo apt install software-properties-common`
3. `sudo add-apt-repository ppa:deadsnakes/ppa`
4. `sudo apt install python3.9`
5. `sudo apt install python3.9-distutils`
6. `curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py`
7. `python3.9 get-pip.py`
8. `python3.9 -m pip install virtualenv`
9. `python3.9 -m virtualenv p39`


Build the image with 

`docker build -t singhujjwal/operator:0.1 .`

Use this image to develop the kubernetes operator ansible based

# --read-only makes the docker read-only and you can't create anything there
docker run  -it --rm  --name op --mount type=bind,source=/home/azureuser/.kube,destination=/root/.kube singhujjwal/operator:0.1 /bin/sh
