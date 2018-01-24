FROM jenkins/jenkins:lts

USER root
RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN usermod -aG docker jenkins

