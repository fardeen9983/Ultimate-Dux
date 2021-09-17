# AWS CodePipeline

ASP.NET Core 3.1 Web API -> ECS Fargate

## Prerequisites
1. Create a IAM User 
2. Set up aws cli v2 on local machine

## CodeCommit part
1. Create a local repository ASP.NET API project
2. Create a new repository in CodeCommit
3. Go to IAM user > Security Credentials > Generate Git Credentials
4. Add the codecommit repository as Remote to local git repositroy
5. Provide the Git crednetials generated above
6. Push the code to the CodeCommit repository

## Docker Image
1. Add a Dockerfile at the root level of project
2. It should copy all the required files and genreate a build
3. Create a new ECR repository

Example for ASP.NET Core 3.1 WebApi
```Dockerfile
#See https://aka.ms/containerfastmode to understand how Visual Studio uses this Dockerfile to build your images for faster debugging.

FROM mcr.microsoft.com/dotnet/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443


FROM mcr.microsoft.com/dotnet/sdk:3.1 AS build
WORKDIR /src
COPY ["WebApplication/WebApplication.csproj", "WebApplication/"]
RUN dotnet restore "WebApplication/WebApplication.csproj"
COPY . .
WORKDIR "/src/WebApplication"
RUN dotnet build "WebApplication.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "WebApplication.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "WebApplication.dll"]
```

## CodeBuild
1. Create a CodeBuild project
2. Select Source provider as CodeCommit and select the appropriate repository and branch
3. Select Configuration
    - Environment - Managed Image
    - OS - Ubuntu
    - Runtime - Standard
    - Image - aws/codebuild/standard:5.0
    - Set Previliged to Yes (for use in DOcker)
    - Add new service role name or select existing
    - Select VPC and compute configuration
    - Add environment variables if needed
    - Add build spec file from repository or from inline editor

Example buildspec file
```yml
version: 0.2
phases: 
  pre_build: 
    commands: 
    - echo Logging in to Amazon ECR.... 
    - AWS_DEFAULT_REGION=us-east-2
    - AWS_ACCOUNT_ID=023433779866
    - REPOSITORY_URI=023433779866.dkr.ecr.us-east-2.amazonaws.com/dotnet-webapi
    - REPOSITORY_NAME=dotnet-webapi
    - aws --version
    - aws ecr get-login-password --region $AWS_DEFAULT_REGION | docker login --username AWS --password-stdin $REPOSITORY_URI
  build: 
    commands: 
    - echo Build started on `date` 
    - echo Building the Docker image... 
    # update the following line with the name of your own ECR repository
    - docker build -f ./Dockerfile --target base -t $REPOSITORY_NAME .
    # update the following line with the URI of your own ECR repository (view the Push Commands in the console)
    - docker tag $REPOSITORY_NAME:latest $REPOSITORY_URI:latest 
  post_build: 
    commands: 
    - echo Build completed on `date` 
    - echo pushing to repo
    # update the following line with the URI of your own ECR repository
    - docker push $REPOSITORY_URI:latest
```

This file will login into docker using ECR credentials, create a docker image from the Dockerfile, tag it with the repository name (on ECR) and push it to the repository.

## Set Up Loadbalancer
1. Go to EC2 console > Create a New Load Balancer > Select Applicatiion Load Balancer 
2. Select Internet Facing option and Ipv4 address
3. Select VPC and subnets. Select or create new Policy group
4. The selected VPC should be the default one
5. Add Listeners for Protocols and Ports like (HTTP: 80,8080 and HTTPS: 443)
6. Create Target groups with type IP Addresses for each of the listeners
7. If asked for a Certificate, Attach one from ACM/IAM if already uploaded
8. If not having a certificate
    - Go to AWS Certificate Manager 
    - Request a public certificate
    - Enter Domain name and add the generated CNAME record to DNS registry
9. Attacht the certificate to the Load Balancer
10. Create the load balancer

## Eelastic Container Service

### Task Definition