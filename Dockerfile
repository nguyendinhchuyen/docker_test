FROM tomcat:9.0.0

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

RUN set -ex; \
	cd webapps && \
	wget --user=jenkins --password=Cicd@123 -d --auth-no-challenge https://cicdjenkinshiguchiteam.jfrog.io/artifactory/jenkins-cicd-libs-release-local/jp/gihyo/jenkinsbook/sampleproject/1.0.0/sampleproject-1.0.0.war&& \
	ls && \
	mv sampleproject-1.0.0.war sampleproject.war && \
	ls\
