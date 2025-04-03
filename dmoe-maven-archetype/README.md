# IBM Decision Manager Open Edition - Maven Archetype
This repository contains a custom [**Maven Archetype**](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html) for creating cloud native decision services based on [**IBM Business Automation Manager Open Edition v9**](https://www.ibm.com/docs/en/ibamoe/9.2.x) using [**Quarkus**](https://https://quarkus.io//) or [**Spring Boot**](https://spring.io/) as the associated container runtime.

## Overview
In short, Archetype is a Maven project template generation toolkit. An archetype is defined as an original pattern or model from which all other things of the same kind are made. The name fits as we are trying to provide a system that provides a consistent means of generating Maven projects, specifically, Kogito Decision Service projects. The archetype will help authors create Maven project templates for users, and provides users with the means to generate parameterized versions of those project templates.

The `IBM Decision Manager Open Edition - Maven Archetype` produces a standard Kogito decision service project structure, complete with a properly configured project `pom.xml` as well as including all of the core dependencies and build targets for a project using these types of artifacts.  

## Getting Started
In order to create a decision service project using the archetype, the archetype and plugin must both be installed/deployed to a Maven cache accessible to each developer. Once this is completed, the archetype can be used by a developer using the VS Code IDE.

## What Gets Generated?
Upon successful execution of the archetype, a directory will be created for your project containg the Maven project struture for the decision service.  All standard Maven commands can now be used in order to build, deploy, and test the decision service.

**_Note_**: There may be certain scenarios where the Git ignore file (_.gitignore_) may not be generated for the new  project.  This is due to a bug in Maven's archetype genearation code.  In the event of this, please add the `.gitignore` file manually to the decision service's root folder.

## Building the Project
In order to build the project you must run the following command `mvn clean install`, which will build the project and store it in the enterprise artifact repository as well as the local .m2 cache. 

## Using the Archetype
This custom Maven archetype can be run from the developer workstation, build server, or any other environment where a command line tool can be used, assuming that environment has access to the enterprise Maven repository for which the archetype has been installed or deployed. Once installed into Maven, the archetype can be run either via the command line or directly in Business Central.

### Using the Archetype from the Command Line
Once the archetype has been built and installed into the enterprise artifact repository, navigate to the project folder for which you would like to create the new project, and run the following command (replacing the properties with the appropriate project value):

```bash
mvn archetype:generate -B "-DarchetypeGroupId=com.ibm.bamoe.maven" "-DarchetypeArtifactId=dmoe-maven-archetype" "-DarchetypeVersion=1.0.0" \
  "-DprojectName=$1" \
  "-DartifactId=$1" \
  "-Druntime=$2
```

### Archetype Parameters

The command above represents the minimal set of properties for the archetype. The `-B command line option` essentially tells the archetype to run in batch mode, rather than interactive mode, which prompts for each archetype property. Each archetype property has a specific default value, set in the archetype descriptor, in the event the property is not provided on the command line. The remainder of the parameters are listed in the following table. All parameters can be added to the call to the archetype by specifying `-DparameterName=parameterValue` on the command line. Please note that most parameters have default values and are not required.

**Decision Manager Open Edition Maven Archetype - Required and Optional Parameters.**
| Parameter Name | Type   | Description | Default Value | Required ? |
| :---           | :----: | :---        | :-----------: | :--------: |
| archetypeGroupId | String | Group ID for the archetype | None | Yes |
| archetypeArtifactId | String | Artifact ID for the archetype | None | Yes |
| archetypeVersion | String | Version number for the archetype | None | Yes |
| projectName | String | Project name (becomes decision service name) | untitled | No |
| projectDescription | String | Project description | Decision Service Project | No |
| groupId | String | Maven groupId for generated project | com.ibm.bamoe | No |
| artifactId | String | Maven artifactId for generated project | untitled | No |
| version | String | Maven version for generated project | 1.0.0-SNAPSHOT | No |
| packaging | String | Maven build package target | jar | No |
| skipTests | Boolean | Determines if unit tests are automatically run | true| No |
| javaVersion | String | Version of Java JDK | 17 | No |
| mavenCompilerPluginVersion | String | Maven compiler plugin version | 3.10.1 | No |
| mavenCompilerParameters | Boolean | Maven compiler parameters | true | No |
| mavenResourcesPluginVersion | String | Maven resources plugin version | 3.2.0 | No |
| mavenSurefirePluginVersion | String | Maven sure-fire plugin version | 3.0.0-M7 | No |
| sourceEncoding | String | Source encoding scheme | UTF-8 | No |
| outputEncoding | String | Output encoding scheme | UTF-8 | No |
| useDMN | Boolean | Flag to indicate that DMN is being used in this project | true | No |
| useDRL | Boolean | Flag to indicate that DLR is being used in this project | true | No |
| useILMT | Boolean | Flag to indicate that IBM License Service is being used in this project | true | No |
| runtime | String | Determines the runtime (Quarkus or Spring Boot) | quarkus | No |
|
**Note:** *The parameters of this archetype are meant to be extended as the organization adds more sharable dependencies, so please be sure to update these properties, the archetype, and this documentation!*

