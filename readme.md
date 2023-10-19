# Spring PetClinic Sample Application [![Build Status](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml/badge.svg)](https://github.com/spring-projects/spring-petclinic/actions/workflows/maven-build.yml)


## PetClinic Application Overview
PetClinic is a [Spring Boot](https://spring.io/guides/gs/spring-boot) application built using [Maven](https://spring.io/guides/gs/maven/) . A GitHub action called craig-pipleine.yaml is triggered whenever a change is committed on the main branch. The GitHub Action will create a Ubuntu runner to run a Maven build with dependency resolution through Maven Central. This will create compiled code in the **/target** folder.

The second stage of the GitHub Action will build a Java docker container with the target files and push the built image to a JFrog Artifactory docker registry. The image will be tagged as **cgdent.jfrog.io/docker/docker-spring-petclinic** with the GitHub Actions run number as the version.


## Running PetClinic locally
You can pull the current stable container image from Artifactory and run it locally using the following commands:

```
docker pull cgdent.jfrog.io/docker/docker-spring-petclinic:20
docker tag cgdent.jfrog.io/docker/docker-spring-petclinic:21 docker-spring-petclinic:latest
docker run -d -p 8080:8080 docker-spring-petclinic:latest
```

You can then access PetClinic at http://localhost:8080/
<pre>

  
</pre>
<img width="1042" alt="petclinic-screenshot" src="https://cloud.githubusercontent.com/assets/838318/19727082/2aee6d6c-9b8e-11e6-81fe-e889a5ddfded.png">


## Database configuration

In its default configuration, Petclinic uses an in-memory database (H2) which
gets populated at startup with data. The h2 console is exposed at `http://localhost:8080/h2-console`,
and it is possible to inspect the content of the database using the `jdbc:h2:mem:testdb` url.


```
# License

The Spring PetClinic sample application is released under version 2.0 of the [Apache License](https://www.apache.org/licenses/LICENSE-2.0).

[spring-petclinic]: https://github.com/spring-projects/spring-petclinic
[spring-framework-petclinic]: https://github.com/spring-petclinic/spring-framework-petclinic
[spring-petclinic-angularjs]: https://github.com/spring-petclinic/spring-petclinic-angularjs 
[javaconfig branch]: https://github.com/spring-petclinic/spring-framework-petclinic/tree/javaconfig
[spring-petclinic-angular]: https://github.com/spring-petclinic/spring-petclinic-angular
[spring-petclinic-microservices]: https://github.com/spring-petclinic/spring-petclinic-microservices
[spring-petclinic-reactjs]: https://github.com/spring-petclinic/spring-petclinic-reactjs
[spring-petclinic-graphql]: https://github.com/spring-petclinic/spring-petclinic-graphql
[spring-petclinic-kotlin]: https://github.com/spring-petclinic/spring-petclinic-kotlin
[spring-petclinic-rest]: https://github.com/spring-petclinic/spring-petclinic-rest
```
