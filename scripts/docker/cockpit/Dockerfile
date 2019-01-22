FROM cockpit/kubernetes:latest


RUN curl -LO http://cbs.centos.org/kojifiles/packages/kubernetes/1.10.0/1.el7/x86_64/kubernetes-client-1.10.0-1.el7.x86_64.rpm



#RUN yum -y install kubernetes-client

#RUN useradd -p changeme kevin



RUN yum -y localinstall ./kubernetes-client-1.10.0-1.el7.x86_64.rpm

RUN yum -y install passwd

RUN echo "root:changeme" | chpasswd

RUN yum install -y procps

#USER kevin

RUN export KUBECONFIG=/root/.kube/config


ADD files/cockpit.conf /etc/cockpit/
ADD files/cockpit.conf-1 /etc/cockpit/

RUN chmod 444 /etc/cockpit/*

#USER root

#RUN kubectl proxy &




