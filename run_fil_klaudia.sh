#!/bin/bash

command=$1

#clone
if [ "$command" = "clone" ]; then
    echo ###### Klonowanie repozytorium ######
    git clone https://github.com/klaudiaf24/PN-assembler-x86-64.git
fi

if [ "$command" = "run" ]; then
    echo ###### Uruchamianie dockera ######
    echo W przypadku trudnosci nalezy uruchomić :
    echo sudo grouadd docker
    echo sudo usermod -aG docker \$USER
    echo sudo chown \"\$USER\":\"\$USER\" /home/\"\$USER\"/.docker -R
    echo sudo chmod g+rwx \"/home/\$USER/.docker\" -T
    echo newgrp docker
    echo 
    echo 
    if [[ -d "PN-assembler-x86-64" ]]
    then
        cd PN-assembler-x86-64
    fi
    docker build -t klaudiafil:1.0 .
    docker run -it klaudiafil:1.0
fi

if [ "$command" = "clean" ]; then
    if [[ ! -d "PN-assembler-x86-64" ]]
    then
        cd .. 
    fi
    echo ###### Usuwanie #######
    rm -rf PN-assembler-x86-64
    docker ps -a -q -f status=exited | xargs docker rm
    docker rmi klaudiafil:1.0 
    docker rmi ubuntu:20.04
fi
