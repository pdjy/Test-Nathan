FROM ubuntu:16.04

RUN apt-get update -y && \
    #apt install oracle-java8-installer -y && \
    #apt install oracle-java8-set-default -y &&\
    apt-get install -y python-pip python-dev build-essential && \
    apt-get install -y wget unzip curl sudo 

RUN wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | apt-key add – && \
    echo 'deb https://pkg.jenkins.io/debian-stable binary/' > /etc/apt/sources.list.d/jenkins.list && \
    add-apt-repository universe && \
    apt-get update -y && \
    apt install jenkins && \
    service jenkins start


ENTRYPOINT [ "systemctl" ]

CMD [ "start", "jenkins.service" ]
