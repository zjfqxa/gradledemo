FROM cargo.caicloudprivatetest.com/qatest/java:zip
MAINTAINER fufu@caicloud.io
RUN  curl -s "https://get.sdkman.io" | bash 
RUN /bin/bash -c "source $HOME/.sdkman/bin/sdkman-init.sh; sdk install gradle 5.4.1"
WORKDIR /usr/src
COPY . .

RUN ["./gradlew", "build"] 

RUN ["./gradlew", "tasks"]
ENTRYPOINT [ "./gradlew", "run" ]

# ref https://guides.gradle.org/building-java-applications/
