# Dockerfile

FROM jenkinsci/blueocean

USER root

# Install the required docker package
RUN apk add --update    \
    docker              \
    docker-compose      \
    docker-cli-compose

# disable the setup wizard as we will set up jenkins as code :)
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Configure - Jenkins Configuration as Code
# Tell the jenkins config-as-code plugin where to find the yaml file
ENV CASC_JENKINS_CONFIG /usr/local/jenkins-casc.yaml

# Copy the list of plugins we wish to install
COPY plugins.txt /usr/share/jenkins/plugins.txt

# run the install-plugins script to install the plugins
#RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

# copy the config-as-code yaml file into the image
COPY jenkins-casc.yaml /usr/local/jenkins-casc.yaml

# run ALL commands without a password for the jenkins user
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers

# Switch To The Jenkins user
USER jenkins

