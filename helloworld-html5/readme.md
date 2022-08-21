## EAP Server with oracle driver and app deployment

The following folders are used by the s2i builder process. We can configure the EAP instance to use oracle driver and deploy multiple war files by configuring the contents.

*  *.s2i* - add environment var to instruct process to use deployments and extentions folders

*  *configuration*

*  *deployments* - it is possible to add .war files here and they will be deployed, all being well, to the EAP instance

* extensions - contains s2i script to be used when configuring oracle driver, plus module.xml - see https://access.redhat.com/documentation/en-us/red_hat_jboss_enterprise_application_platform/7.4/html/getting_started_with_jboss_eap_for_openshift_container_platform/configuring_eap_openshift_image#S2I-Artifacts




