# CI/CD Images
####  ns5_ub18
{N} NativeScript 5
####  - sf4_ub18
Symfony 4

### .gitlab-ci.yml usage
```yml
job1:
  stage: build
  image: uvigii/ns5:latest
```
```yml
job1:
  image: uvigii/sf4:latest
  stage: test
```  
  
### VM usage
 ```sh
# sh install_packages.sh
 ```
 
