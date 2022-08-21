## EAP Server with oracle driver and app deployment

The following folders are used by the s2i builder process. This means we can configure as required.

* .s2i - add enviroment var to instruct process to use deployments and extentions folders.
* configuration - for datasource params to be available to pod..
* extentions - contains s2i script to be used when configuring oracle driver 

