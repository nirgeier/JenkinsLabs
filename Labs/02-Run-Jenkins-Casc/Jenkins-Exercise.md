![](https://raw.githubusercontent.com/nirgeier/KubernetesLabs/master/resources/k8s-logos.png)

---

# Jenkins Exercise

- The aim of this exercise is to have a running `Jenkins` with pre-defined configuration.
- The Jenkins should be a docker container
- The configuration should be defined in `Jenkins Configuration as Code`

### What should be in the solution?

A zip / Github project with the following:

1. **Dockerfile**
    - Docker image should be build upon `jenkinsci/blueocean`
2. **Jenkins configuration** 
    - Pre-configured Jenkins based upon `Jenkins Configuration as Code (CASC)`
    - The configuration should include:
      - Pre-defined admin user
      - Any other configuration. **Choose one**:
        - Tools (git,docker) 
        - Security matrix
        - Pre-Defined Job

---

## Bonus:
1.  `Docker-compose` file 

## Super Bonus:
2.  Pre install list of Jenkins plugins
3.  Store jenkins content in a volume so we will be able to run Jenkins over again and to preserve the last run

**Good Luck.**


    