FROM jenkins/jenkins:lts

USER root

# Instalar Maven
RUN apt-get update && apt-get install -y maven

# Regresar a usuario jenkins
USER jenkins
