FROM fedora:latest

RUN dnf -y update

RUN dnf -y install sshuttle \
    && dnf -y install git \
    && dnf -y install curl \
    && dnf -y install vim-X11 \
    && dnf -y install the_silver_searcher

RUN adduser -m -p '' mrtool
USER mrtool

#wip ssh key
#RUN mkdir -p ~/.ssh/
#COPY ~/.ssh/ ~/.ssh/