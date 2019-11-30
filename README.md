# CI/CD Images optimized for GitLab
### ns5_ub18
{N} NativeScript 5
###  sf4_ub18
#### for Symfony 4 based on ubuntu 18.04
#### Features:
- from ubuntu:latest | proven and tested, glibc packages
- nginx and fpm | similar to production env
- only 290MB | official php docker image is 500+MB
- all required and recommended php modules | great compability
- running with www-data 


### .gitlab-ci.yml usage
```yml
job1:
  stage: build
  image: uvigii/ns5:latest
```
```yml
stages:
    - test
variables:
  APP_ENV='test'
job1:
  image: uvigii/sf4:latest
  stage: test
  tags:
    - symfony
  script:
    - composer install --optimize-autoloader
    - php bin/phpunit 

```  
  
### VM usage
 ```sh
# sh install_packages.sh
 ```
 
