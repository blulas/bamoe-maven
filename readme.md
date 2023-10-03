# IBM Business Automation Manager Open Editions (BAMOE) - Maven Archetypes

This repository contains custom [**Maven Archetypes**](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html) for creating cloud native decision and process services based on [**IBM Business Automation Manager Open Edition v9**](https://www.ibm.com/docs/en/ibamoe/9.0.0?topic=introduction-what-is-bamoe) using [**Quarkus**](https://https://quarkus.io//) as the associated container runtime.

## Overview

In short, Archetype is a Maven project template generation toolkit. An archetype is defined as an original pattern or model from which all other things of the same kind are made. The name fits as we are trying to provide a system that provides a consistent means of generating Maven projects, specifically, Kogito Decision Service projects. The archetype will help authors create Maven project templates for users, and provides users with the means to generate parameterized versions of those project templates.

## Repository Modules

This is a multi-module repository, with the following modules:

- [**Decision Manager Open Edition (DMOE) Maven Archetype**](./dmoe-maven-archetype) is a [**Maven Archetype**](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html) that can create a decision service Maven project. 
- [**Process Automation Manager Open Edition (PAMOE) Decision Manager Open Edition Maven Archetype**](./pamoe-maven-archetype) is a [**Maven Archetype**](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html) that can create a process service Maven project. 
- [**Business Automation Manager Open Edition (BAMOE) - Fact Model Maven Archetype**](./bamoe-fact-model-maven-archetype) is a [**Maven Archetype**](https://maven.apache.org/guides/introduction/introduction-to-archetypes.html) that can create a fact model library Maven project. 

## Additional Information (*Appendicies*)
This repository is focused on business automation using [**IBM Business Automation Manager Open Editions**](https://www.ibm.com/docs/en/ibamoe/9.0.0?topic=introduction-what-is-bamoe) products, specifically the IBM build of [**Kogito**](https://kogito.kie.org/) known as **IBM Decision Manager Open Edition (DMOE)** and **IBM Process Automation Manager Open Edition (PAMOE)**, leveraging [**Quarkus**](https://quarkus.io/) as the assoicated container runtime.  The following online documentation is available in order to learn various aspects of these products and frameworks:

- [**Apache Maven**](https://maven.apache.org/) is a free and open source software project management and comprehension tool. Based on  the concept of a project object model (POM), Maven can manage a project’s build, reporting and documentation from a central piece of  information. A **getting started guide** is available [here](http://maven.apache.org/guides/getting-started/).

- [**Git**](https://git-scm.com//) is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency. There is a **handbook** available [here](https://guides.github.com/introduction/git-handbook/), as well as various **guides** for learning and working with Git available [here](https://guides.github.com/)

- [**Kogito**](https://kogito.kie.org/) is a cloud-native business automation technology for building cloud-ready business applications. The name Kogito derives from the Latin "Cogito", as in "Cogito, ergo sum" ("I think, therefore I am"), and is pronounced [ˈkoː.d͡ʒi.to] (KO-jee-to). The letter K refers to Kubernetes, the base for OpenShift as the target cloud platform for Kogito, and to the Knowledge Is Everything (KIE) open source business automation project from which Kogito originates.  Kogito is optimized for a hybrid cloud environment and adapts to your domain and tooling needs. The core objective of Kogito is to help you mold a set of business processes and decisions into your own domain-specific cloud-native set of services.  You can find a useful introdution to this technology at [**Getting Started with Kogito**](https://kogito.kie.org/get-started/).

- [**Quarkus**](https://quarkus.io/) - Traditional Java stacks were engineered for monolithic applications with long startup times and large memory requirements in a world where the cloud, containers, and Kubernetes did not exist. Java frameworks needed to evolve to meet the needs of this new world.  Quarkus was created to enable Java developers to create applications for a modern, cloud-native world. Quarkus is a Kubernetes-native Java framework tailored for GraalVM and HotSpot, crafted from best-of-breed Java libraries and standards. The goal is to make Java the leading platform in Kubernetes and serverless environments while offering developers a framework to address a wider range of distributed application architectures.  You can find a useful introdution to this technology at [**Getting Started with Quarkus**](https://quarkus.io/get-started/).

