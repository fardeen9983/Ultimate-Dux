# Dockers and Kubernetes

## Topics
1. Containers Primer
2. Difference between Virtual Machine & Contianer
3. Microservices
4. Docker
5. Kubernetes
6. Container World
7. Suitable workloads
8. Enterprise & Product readiness
9. Orchestration

## Containers
In this mordern era of technology, applications are equivalent to businesses. Applications run on server. Traditionally an application is made to run on multiple instances of a physical server thus with each demand of a new application, server hardware had to be arranged. Also it begs the question as to what kind of server the application would need. Does it need to be a big one with a very large storage, how fast it should be? But alas it was not possible to answer this question. This led to waste of procesing power of large servers that could only use a portion of their capacity.

### Solution by VMWare
* Virtual Machines led to use of multiple applications on the same servers.
* Instead of using one server for one application, it allowed multiple apps to run on single instance (physical).
* All the VMs are created above a hypervisor layer
* For each application, we create a virual machine on the server (each of which is partial consumption of the hardware resourses).
* Then each of the VMs need their own dedicated OS which automatically consume some of the alloted resources just to start up and running; even before we have an application actually installed
* The OS needs to start first for the application to be active
* The OS may also require licensing, also maintainance in terms of patching, updates, security,etc
  So still there are many underlying issues in using Virtual Machines

## Solution by Container
* Only one OS is installed per server
* For each of the applications we create a container
* Instead of consuming part of hardware resources they rely on sharing OS kernel
* Containers are smaller, efficient and lightweight as compared to VMs

____
**Note**
Docker containers on Linux only run Linux apps. This is same for Windows as well. You will need Docker for windows to run Windows app.
____

## Microservices & Cloud native
* Legacy/monolithic apps were mostly bundled as single large binaries.
* Rolling out a patch or updating some functionality requires complete binary overhaul.
