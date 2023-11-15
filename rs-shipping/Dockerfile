FROM      maven as SOURCE
RUN       mkdir /app
WORKDIR   /app
ADD       src src
ADD       pom.xml .
RUN       mvn package

FROM      openjdk:8-alpine
RUN       mkdir /app
WORKDIR   /app
COPY      --from=SOURCE /app/target/shipping-1.0.jar /app/shipping.jar
CMD       ["java", "-jar", "shipping.jar"]
