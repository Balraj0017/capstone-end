FROM mysql:5.7.8
ENV  MYSQL_USER=petclinic
ENV  MYSQL_PASSWORD=petclinic
ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_DATABASE=petclinic
ENV PORT = 3306

WORKDIR /app
COPY  target/*.jar /app/
EXPOSE 9090
ENTRYPOINT ["java","-jar","spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]
