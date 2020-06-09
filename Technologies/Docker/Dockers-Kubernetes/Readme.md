# Dockers and Kubernetes

## Topics
1. Containers Primer
2. Difference between Virtual Machine & Container
3. Microservices
4. Docker
5. Kubernetes
6. Container World
7. Suitable workloads
8. Enterprise & Product readiness
9. Orchestration

## Containers
In this modern era of technology, applications are equivalent to businesses. Applications run on a server. Traditionally an application is made to run on multiple instances of a physical server, and thus with each demand of a new application, server hardware had to be arranged. Also, it begs the question as to what kind of server the application would need. Does it need to be a big one with substantial storage, how fast it should be? But alas, it was not possible to answer this question. This led to the waste of processing power of large servers that could only use a portion of their capacity.

### Solution by VMWare
* Virtual Machines led to the use of multiple applications on the same servers.
* Instead of using one server for one application, it allowed numerous apps to run on a single instance (physical).
* All the VMs are created above a hypervisor layer
* For each application, we create a virtual machine on the server (each of which is partial consumption of the hardware resources).
* Then each of the VMs need their dedicated OS which automatically consumes some of the allocated resources to start-up and running; even before we have an application installed
* The OS needs to start first for the application to be active
* The OS may also require licensing, also maintenance in terms of patching, updates, security, etc
  So still there are many underlying issues in using Virtual Machines

## Solution by Container
* Only one OS is installed per server
* For each of the applications we create a container
* Instead of consuming part of hardware resources they rely on sharing OS kernel
* Containers are smaller, efficient and lightweight as compared to VMs

____
**Note**
Docker containers on Linux only run Linux apps. This is the same for Windows as well. You will need Docker for Windows to run a Windows app.
____

## Microservices & Cloud-native
* Legacy/monolithic apps were mostly bundled as single massive binaries.
* Rolling out a patch or updating some functionality requires a complete binary overhaul.
* So in case of microservices each of the functionality that can be individualized is separated and created into its entity/application that can run, update and get patched separately without affecting the overall application
* Cloud-native architecture doesn't require the application to be deployed on a cloud infrastructure. Rather it can be deployed on


## Docker
Docker Inc, a technology start-up based in San Fransico is the main sponsor behind the open sourcec technology **docker**. It was initially named **dotCloud** providing cloud services  on top of **AWS**. Docker was initially was an inhouse tool used by the company to create an manage containers.