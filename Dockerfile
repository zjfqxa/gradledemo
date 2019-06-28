FROM cargo.caicloudprivatetest.com/qatest/java
MAINTAINER fufu@caicloud.io
RUN sdk install gradle 5.4.1
WORKDIR /usr/src
COPY . .

RUN ./gradlew build 

CMD ./gradlew tasks
ENTRYPOINT [ "./gradlew", "run" ]

# ref https://guides.gradle.org/building-java-applications/