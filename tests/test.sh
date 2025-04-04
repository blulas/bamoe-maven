#!/bin/bash

echo Generating sample projects via archetypes...
../fact-model-maven-archetype/generateProject.sh sample-fact-model
../dmoe-maven-archetype/generateQuarkusProject.sh sample-quarkus-decision
../dmoe-maven-archetype/generateSpringBootProject.sh sample-sb-decision
../pamoe-maven-archetype/generateQuarkusProject.sh sample-quarkus-process

echo Buiding sample projects generated from archetypes...

cd sample-fact-model
mvn clean install
cd ..

cd sample-quarkus-decision
mvn clean install
cd ..

cd sample-quarkus-process
mvn clean install
cd ..

cd sample-sb-decision
mvn clean install
cd ..

