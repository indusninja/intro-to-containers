---
description: Workshop guide
---

# Intro to Containers

## What are Containers?

Containers are an abstraction at the app layer that packages code and dependencies \(libraries, binaries, configuration files\) together. Multiple containers can run on the same machine and share the OS kernel with other containers, each running as isolated processes in user space.

![Container Architecture](.gitbook/assets/container-what-is-container.png)

Source: [Docker](https://www.docker.com/resources/what-container)

## Why do we care about them?

* **Less overhead.** Containers require less system resources than traditional or hardware virtual machine environments because they don’t include operating system images.
* **Increased portability.** Applications running in containers can be deployed easily to multiple different operating systems and hardware platforms.
* **More consistent operation.** DevOps teams know applications in containers will run the same, regardless of where they are deployed.
* **Greater efficiency.** Containers allow applications to be more rapidly deployed, patched, or scaled.
* **Better application development.** Containers support agile and DevOps efforts to accelerate development, test, and production cycles. All developers can run the same infrastructure.

Source: [netapp](https://www.netapp.com/us/info/what-are-containers.aspx)

## Things to be careful about Containers

* **Slower than bare-metal.** Running an app in a container is always faster than a VM, but its always slower than running on bare-metal.
* **Security.** Containers are less isolated from each other than virtual machines, and if there is a vulnerability in the kernel it can jeopardize the security of the other containers as well. So be extra careful about which containers to use and security best practices for containers.
* **Less flexibility in operating systems.** A host machine can only run containers of a specific OS. For example, if your machine is running containers for Linux, then it can't run windows based containers at the same time.
* **Another challenge is networking.** Deploying containers in a sufficiently isolated way while maintaining an adequate network connection can be tricky.
* **Managing large scale environments.** Containerized applications can get complicated in production, as many might require hundreds to thousands of separate containers in production.

Source: [Medium \(flow.ci\)](https://medium.com/flow-ci/introduction-to-containers-concept-pros-and-cons-orchestration-docker-and-other-alternatives-9a2f1b61132c)

## Use cases for Containers

* **“Lift and shift” existing applications into modern cloud architectures.** Some organizations use containers to migrate existing applications into more modern environments. While this practice delivers some of the basic benefits of operating system virtualization, it does not offer the full benefits of a modular, container-based application architecture.
* **Refactor existing applications for containers.** Although refactoring is much more intensive than lift-and-shift migration, it enables the full benefits of a container environment.
* **Develop new container-native applications.** Much like refactoring, this approach unlocks the full benefits of containers.
* **Provide better support for microservices architectures.** Distributed applications and microservices can be more easily isolated, deployed, and scaled using individual container building blocks.
* **Provide DevOps support for continuous integration and deployment \(CI/CD\).** Container technology supports streamlined build, test, and deployment from the same container images.
* **Provide easier deployment of repetitive jobs and tasks.** Containers are being deployed to support one or more similar processes, which often run in the background, such as ETL functions or batch jobs.

Source: [netapp](https://medium.com/flow-ci/introduction-to-containers-concept-pros-and-cons-orchestration-docker-and-other-alternatives-9a2f1b61132c)

Workshop plan from another workshop:

* Installing Docker
* Creating your first Docker container
* Building Docker images
* Storing and retrieving Docker images from registries such as Docker Hub
* Building containers from images
* Docker volumes
* Container security
* Using Docker for sandboxing and testing
* Deploying applications with Docker
* Orchestration by docker-compose
* Introduction to kubernetes concepts
* Deploying, upgrading and monitoring your cloud native applications on kubernetes

