# IBM Process Automation Manager Open Edition - Maven Archetype

This repository contains a custom [**Maven Archetype**](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html) for creating cloud native process services based on [**IBM Business Automation Manager Open Edition v9**](https://www.ibm.com/docs/en/ibamoe/9.0.0?topic=introduction-what-is-bamoe) using [**Quarkus**](https://https://quarkus.io//) as the associated container runtime.

## Overview

In short, Archetype is a Maven project template generation toolkit. An archetype is defined as an original pattern or model from which all other things of the same kind are made. The name fits as we are trying to provide a system that provides a consistent means of generating Maven projects, specifically, Kogito Process Service projects. The archetype will help authors create Maven project templates for users, and provides users with the means to generate parameterized versions of those project templates.

The `IBM Process Automation Manager Open Edition - Maven Archetype` produces a standard Kogito process service project structure, complete with a properly configured project `pom.xml` as well as including all of the core dependencies and build targets for a project using these types of artifacts.  

## Getting Started

In order to create a process service project using the archetype, the archetype and plugin must both be installed/deployed to a Maven cache accessible to each developer. Once this is completed, the archetype can be used by a developer using the VS Code IDE.

## What Gets Generated?

Upon successful execution of the archetype, a directory will be created for your project containg the Maven project struture for the process service.  All standard Maven commands can now be used in order to build, deploy, and test the process service.

**_Note_**: There may be certain scenarios where the Git ignore file (_.gitignore_) may not be generated for the new  project.  This is due to a bug in Maven's archetype genearation code.  In the event of this, please add the `.gitignore` file manually to the process service's root folder.

## Building the Project

In order to build the project you must run the following command `mvn clean deploy`, which will build the project and store it in the enterprise artifact repository as well as the local .m2 cache. 

## Using the Archetype

This custom Maven archetype can be run from the developer workstation, build server, or any other environment where a command line tool can be used, assuming that environment has access to the enterprise Maven repository for which the archetype has been installed or deployed. Once installed into Maven, the archetype can be run either via the command line or directly in Business Central.

### Using the Archetype from the Command Line

Once the archetype has been built and installed into the enterprise artifact repository, navigate to the project folder for which you would like to create the new project, and run the following command (replacing the properties with the appropriate project value):

`mvn archetype:generate -B -DarchetypeGroupId=com.ibm.bamoe.maven -DarchetypeArtifactId=dmoe-maven-archetype -DarchetypeVersion=1.0.0-SNAPSHOT -DprojectName=<project name> -DartifactId=<project artifact id>`

### Archetype Parameters

The command above represents the minimal set of properties for the archetype. The `-B command line option` essentially tells the archetype to run in batch mode, rather than interactive mode, which prompts for each archetype property. Each archetype property has a specific default value, set in the archetype descriptor, in the event the property is not provided on the command line. The remainder of the parameters are listed in the following table. All parameters can be added to the call to the archetype by specifying `-DparameterName=parameterValue` on the command line. Please note that most parameters have default values and are not required.

**Process Automation Manager Open Edition Maven Archetype - Required and Optional Parameters.**
| Parameter Name | Type   | Description | Default Value | Required ? |
| :---           | :----: | :---        | :-----------: | :--------: |
| archetypeGroupId | String | Group ID for the archetype | None | Yes |
| archetypeArtifactId | String | Artifact ID for the archetype | None | Yes |
| archetypeVersion | String | Version number for the archetype | None | Yes |
| projectName | String | Project name (becomes process service name) | untitled | No |
| projectDescription | String | Project description | process Service Project | No |
| groupId | String | Maven groupId for generated project | com.ibm.bamoe | No |
| artifactId | String | Maven artifactId for generated project | untitled | No |
| version | String | Maven version for generated project | 1.0.0-SNAPSHOT | No |
| packaging | String | Maven build package target | jar | No |
| useBPMN | Boolean | Flag to indicate that BPMN is being used in this project | true | No |
| useDMN | Boolean | Flag to indicate that DMN is being used in this project | true | No |
| useDRL | Boolean | Flag to indicate that DLR is being used in this project | true | No |
| useILMT | Boolean | Flag to indicate that IBM License Service is being used in this project | true | No |
| runtimeGroupId | String | Group ID of the associated runtime (Quarkus is default) | io.quarkus.platform | No |
| runtimeArtifactId | String | Artifact ID of the associated runtime (Quarkus is default) | quarkus.bom | No |
| runtimeVersion | String | Version of the associated runtime (Quarkus is default) | 2.16.7.Final | No |
| runtimePlugin | String | Name of the Maven plugin used to create the target package (Quarkus is default) | quarkus-maven-plugin | No |
| runtimePort | String | The port number to assign the service to | 8080 | No |
| kogitoGroupId | String | Group ID of the Kogito implementation | com.ibm.bamoe | No |
| kogitoArtifactId | String | Artifact ID of the Kogito implementation | bamoe-bom | No |
| kogitoVersion | String | Version of the Kogito implementation | 9.0.0-Final | No |
| javaVersion | String | Version of Java JDK | 11 | No |
| mavenCompilerPluginVersion | String | Maven compiler plugin version | 3.10.1 | No |
| mavenSurefirePluginVersion | String | Maven sure-fire plugin version | 3.0.0-M7 | No |
| sourceEncoding | String | Source encoding scheme | UTF-8 | No |
| outputEncoding | String | Output encoding scheme | UTF-8 | No |

**Note:** *The parameters of this archetype are meant to be extended as the organization adds more sharable dependencies, so please be sure to update these properties, the archetype, and this documentation!*

## Additional Information (*Appendicies*)
This repository is focused on business automation using [**IBM Business Automation Manager Open Editions**](https://www.ibm.com/docs/en/ibamoe/9.0.0?topic=introduction-what-is-bamoe) products, specifically the IBM build of [**Kogito**](https://kogito.kie.org/) known as **IBM Process Automation Manager Open Edition**, leveraging [**Quarkus**](https://quarkus.io/) as the assoicated container runtime.  The following online documentation is available in order to learn various aspects of these products and frameworks:

- [**Apache Maven**](https://maven.apache.org/) is a free and open source software project management and comprehension tool. Based on  the concept of a project object model (POM), Maven can manage a project’s build, reporting and documentation from a central piece of  information. A **getting started guide** is available [here](http://maven.apache.org/guides/getting-started/).

- [**Git**](https://git-scm.com//) is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. There is a **handbook** available [here](https://guides.github.com/introduction/git-handbook/), as well as various **guides** for learning and working with Git available [here](https://guides.github.com/)

- [**Kogito**](https://kogito.kie.org/) is a cloud-native business automation technology for building cloud-ready business applications. The name Kogito derives from the Latin "Cogito", as in "Cogito, ergo sum" ("I think, therefore I am"), and is pronounced [ˈkoː.d͡ʒi.to] (KO-jee-to). The letter K refers to Kubernetes, the base for OpenShift as the target cloud platform for Kogito, and to the Knowledge Is Everything (KIE) open source business automation project from which Kogito originates.  Kogito is optimized for a hybrid cloud environment and adapts to your domain and tooling needs. The core objective of Kogito is to help you mold a set of business processes and processs into your own domain-specific cloud-native set of services.  You can find a useful introdution to this technology at [**Getting Started with Kogito**](https://kogito.kie.org/get-started/).

- [**Quarkus**](https://quarkus.io/) - Traditional Java stacks were engineered for monolithic applications with long startup times and large memory requirements in a world where the cloud, containers, and Kubernetes did not exist. Java frameworks needed to evolve to meet the needs of this new world.  Quarkus was created to enable Java developers to create applications for a modern, cloud-native world. Quarkus is a Kubernetes-native Java framework tailored for GraalVM and HotSpot, crafted from best-of-breed Java libraries and standards. The goal is to make Java the leading platform in Kubernetes and serverless environments while offering developers a framework to address a wider range of distributed application architectures.  You can find a useful introdution to this technology at [**Getting Started with Quarkus**](https://quarkus.io/get-started/).

