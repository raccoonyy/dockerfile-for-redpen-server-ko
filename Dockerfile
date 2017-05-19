FROM maven:3-jdk-8

WORKDIR /
RUN  git clone -b korean https://github.com/nacyot/redpen.git

WORKDIR /redpen
RUN  mvn install &&\
     tar xvf ./redpen-distribution/target/redpen-distribution-1.8.1-SNAPSHOT-assembled.tar.gz

EXPOSE 8080

CMD ["java", "-jar", "-Dredpen.home=/", "/redpen/redpen-distribution-1.8.1-SNAPSHOT/bin/redpen-server.war"]

