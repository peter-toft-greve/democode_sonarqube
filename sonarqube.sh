#!/bin/bash
make clean
# https://stackoverflow.com/questions/40746933/running-sonarqube-analysis-scan-sonarsource-build-wrapper
wget http://localhost:8082/sonarqube/static/cpp/build-wrapper-linux-x86.zip
unzip build-wrapper-linux-x86.zip
export BUILDSCANNER=`pwd`/build-wrapper-linux-x86/
export PATH=$PATH:${BUILDSCANNER}
build-wrapper-linux-x86-64 --out-dir sonar make
sonar-scanner \
  -Dsonar.projectKey=democode \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://localhost:8082/sonarqube \
  -Dsonar.login=924fe9e41e44a875e55a465764a931fc17f64184 \
  -Dsonar.cpp.file.suffixes=- \
  -Dsonar.objc.file.suffixes=- \
  -Dsonar.cfamily.gcov.reportsPath=. \
  -Dsonar.cfamily.build-wrapper-output=sonar

rm -rf ${BUILDSCANNER}
