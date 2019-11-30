# CI/CD Images optimized for GitLab
### ns5_ub18
{N} NativeScript 5
###  sf4_ub18
#### for Symfony 4 based on ubuntu 18.04 
####Features:
- from ubuntu:latest
- nginx and fpm
- same beavior as with ubuntu server
- only 290MB
- all required and recomended php modules
- all processes are running with www-data

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
 
