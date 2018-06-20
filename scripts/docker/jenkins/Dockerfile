FROM jenkins/jenkins:lts

# if we want to install via apt
USER root

RUN apt-get update && \
    apt-get install -y ruby jq && \
    apt-get clean

#RUN ls

#COPY files/init.groovy /usr/share/jenkins/ref/init.groovy
#COPY files/plugins.txt /usr/share/jenkins/plugin-java.txt
COPY files/plugins.txt /usr/share/jenkins/plugins.txt
#COPY files/wait-until-docker-running.sh /var/jenkins_home
#RUN chmod 755 /var/jenkins_home/wait-until-docker-running.sh

#Docker installation possibility from: https://getintodevops.com/blog/the-simple-way-to-run-docker-in-docker-for-ci
## Install the latest Docker CE binaries
#RUN apt-get update && \
#    apt-get -y install apt-transport-https \
#      ca-certificates \
#      curl \
#      gnupg2 \
#      software-properties-common && \
#    curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
#    add-apt-repository \
#      "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
#      $(lsb_release -cs) \
#      stable" && \
#   apt-get update && \
#   apt-get -y install docker-ce

# Making docker in docker possible
USER root
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y install apt-transport-https ca-certificates && \
    echo "deb https://apt.dockerproject.org/repo debian-jessie main" | tee /etc/apt/sources.list.d/docker.list && \
    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D && \
    DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install --assume-yes docker-engine && \
    echo "jenkins ALL=NOPASSWD: /usr/bin/docker" >> /etc/sudoers && \
    echo "jenkins ALL=NOPASSWD: /usr/local/bin/docker-compose" >> /etc/sudoers && \
    echo 'Defaults  env_keep += "HOME"' >> /etc/sudoers

#RUN /var/jenkins_home/wait-until-docker-running.sh

#RUN install-plugins.sh $( paste -sd' ' /usr/share/jenkins/plugin-java.txt )
RUN install-plugins.sh $( paste -sd' ' /usr/share/jenkins/plugins.txt )

# drop back to the regular jenkins user - good practice
USER jenkins

