## Docker
alias dk="docker"
alias di="docker images"
alias dirm="docker rmi -f"
alias dcrm="docker container rm -f"
alias db="docker build . -t "
# alias dcb="docker-compose up -d --Build"
# alias dcbf="docker-compose up -f build"
alias dpsa="docker ps -a" 
alias dcc="docker clean cache" 
alias dl="docker logs "
alias dsto="docker stop"
alias dsta="docker start"
alias dcl="docker container ls"
alias dre="docker restart"
alias dcb="docker-compose build"
alias dcu="docker-compose up"
alias dcub="docker-compose up --build"

dri() {
  docker run -d --name $1 $2;
}

dc() {
  docker $@;
}

dcp() {
  HTTP_PROXY=$PROXY docker $@;
}

dr() {
  docker run -i -t -p $1:$2 $3; 
}

drp() {
  HTTP_PROXY=$PROXY docker run -i -t -p $1:$2 $3; # from:to
}

ds() {
  docker exec -it $@ bash;
}

dsp() {
  HTTP_PROXY=$PROXY docker docker exec -it $@ bash;
}

dexc() {
  bash -c "clear && docker exec -it ${1} sh";
}