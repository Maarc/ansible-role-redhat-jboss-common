Ansible role: "Red Hat JBoss common" [![Build Status](https://travis-ci.org/Maarc/ansible-role-redhat-jboss-common.svg?branch=master)](https://travis-ci.org/Maarc/ansible-role-redhat-jboss-common) [![Galaxy](https://img.shields.io/badge/galaxy-maarc.rh--jboss--common-blue.svg?style=flat)](https://galaxy.ansible.com/Maarc/rh-jboss-common)
=================================

Description
-----------

Installs the prerequisites for the Red Hat JBoss middleware products specific roles like:

- [Red Hat JBoss Enterprise Application Platform (EAP)](https://github.com/Maarc/ansible-role-redhat-jboss-eap)
- [Red Hat JBoss Web Server (JWS) - Apache HTTPD](https://github.com/Maarc/ansible-role-redhat-jboss-web-server-httpd)
- [Red Hat JBoss Web Server (JWS) - Apache Tomcat](https://github.com/Maarc/ansible-role-redhat-jboss-web-server-tomcat)

This role sets the timezone, some shell aliases and installs the following packages:

- unzip
- java
- rsync
- net-tools (for netstat)
- psmisc (for pstree)
- vim (for vimdiff)

Please have a look at [this example](https://github.com/Maarc/ansible_middleware_soe) showing how to easily operate Red Hat JBoss middleware products using this role.


Requirements
------------

This role has been tested on Ansible 2.0.2.0 and 2.1.1.0. It requires Red Hat Enterprise Linux 7.


Dependencies
------------

None.


Installation
------------

  ansible-galaxy install Maarc.rh-jboss-common


Role Variables
--------------

| Name              | Default Value       | Description          |
|-------------------|---------------------|----------------------|
| `java_pkg_name` | `java-1.8.0-openjdk-devel` | Used Java 8 JDK. See [recommendation](https://access.redhat.com/solutions/18259). |
| `timezone` | `Europe/Berlin` |  Timezone for the hosts and the logs. |
| `download_dir` | `/tmp` | Directory containing all downloaded middleware  on the managed remote host. |


License
-------

[Apache 2.0](./LICENSE)


Author Information
------------------

* [Marc Zottner](https://github.com/Maarc)
* [Roeland van de Pol](https://github.com/roelandpol)
