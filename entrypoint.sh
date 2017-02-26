#!/bin/bash
echo Running java application with environment defined as $BUILD_ENV
./gradlew clean jar -Penvironment=$BUILD_ENV

cd ./build/libs/

pwd

java -jar java-gradle-console-app-1.0-SNAPSHOT.jar
