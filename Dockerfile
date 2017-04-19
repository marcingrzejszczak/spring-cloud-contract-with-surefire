FROM java:jre-alpine
ARG JARNAME
ENV PROJECTNAME = sample.jar
ADD /service/target/$JARNAME sample.jar
RUN sh -c 'touch /' + sample.jar
ENTRYPOINT exec java $JAVA_OPTS -jar sample.jar
