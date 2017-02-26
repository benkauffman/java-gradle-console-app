FROM krashid/centos-java-gradle

ARG env=java-gradle-console-app-dev
ENV BUILD_ENV=$env
RUN echo BUILD IMAGE WITH ENVIRONMENT DEFINED AS $BUILD_ENV

# COPY java application to image
RUN mkdir /usr/dev
WORKDIR /usr/dev
COPY . /usr/dev/java-gradle-console-app/
WORKDIR /usr/dev/java-gradle-console-app/

# run all of the the tests if the exit code is anything other than 0 (a test fails) the image will not build
#RUN ./gradlew clean test integrationTest -Penvironment=integration-test

#set the entry point to launch the app without any tests (they should have been ran when the image was built)
ENTRYPOINT ["./entrypoint.sh"]
EXPOSE 8080 8081



####################################################################################################
####################################################################################################
####################################################################################################
# BUILD THE DOCKER IMAGE
# docker build --no-cache=true --build-arg env=project11-web-api-dev -t project11-web-api .
#
# RUN THE IMAGE IN A CONTAINER
# docker run -it --rm -p 8888:8080 --name project11-web-api project11-web-api
####################################################################################################
####################################################################################################
####################################################################################################
