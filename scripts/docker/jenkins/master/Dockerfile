FROM jenkins/jenkins:2.130-slim

COPY files/init.groovy /usr/share/jenkins/ref/init.groovy
COPY files/plugins.txt /usr/share/jenkins/plugins.txt


# if we want to install via apt
USER root

#RUN chmod 400 /usr/share/jenkins/gitsshkey

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false \
              -Djava.awt.headless=true \
              -Dhudson.model.ParametersAction.keepUndefinedParameters=true

RUN apt-get update && \
    apt-get install -y ruby && \
    apt-get install -y jq && \
    apt-get install -y wget && \
    apt-get clean

# Install cf-cli
RUN apt-get -y install apt-transport-https && \
    wget -q -O - https://packages.cloudfoundry.org/debian/cli.cloudfoundry.org.key | apt-key add - && \
    echo "deb http://packages.cloudfoundry.org/debian stable main" | tee /etc/apt/sources.list.d/cloudfoundry-cli.list && \
    apt-get -y update && \
    apt-get -y install cf-cli

# Install kubectl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin/kubectl

# Making docker in docker possible
USER root
RUN apt-get update
RUN apt-get -y install \
        apt-transport-https \
        ca-certificates \
        curl \
        software-properties-common
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       xenial \
       stable"
RUN apt-get update
RUN apt-get -y install docker-ce


RUN install-plugins.sh $( paste -sd' ' /usr/share/jenkins/plugins.txt )

# drop back to the regular jenkins user - good practice
USER jenkins

