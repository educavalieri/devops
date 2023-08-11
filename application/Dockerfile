FROM openjdk:11
ENV MAVEN_VERSION 3.8.1
ENV MAVEN_HOME /usr/lib/mvn
ENV PATH $MAVEN_HOME/bin:$PATH
RUN wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  mv apache-maven-$MAVEN_VERSION /usr/lib/mvn
RUN mkdir /opt/note
WORKDIR /opt/note
RUN git clone https://github.com/educavalieri/application_devepos.git /opt/note
RUN mvn package -Dmaven.test.skip=true
ARG JAR_FILE=*.jar
RUN cp ./target/application_dev-0.0.1-SNAPSHOT.jar /opt/note/application_dev.jar
ENTRYPOINT ["java","-jar","/opt/note/application_dev.jar"]
