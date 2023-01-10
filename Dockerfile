FROM openjdk:17
VOLUME /tmp
ARG DEPENDENCY=target/DEPENDENCY
COPY ${DEPENDENCY}/BOOT-INF/lib /app/lib
COPY ${DEPENDENCY}/META-INF /app/META-INF
COPY ${DEPENDENCY}/BOOT-INF/classes /app
ENTRYPOINT ["java","-cp","app:app/lib/*","br.com.acsousa.aws_project02.AwsProject02Application"]