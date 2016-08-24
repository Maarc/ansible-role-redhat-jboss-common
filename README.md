Ansible role: "Red Hat JBoss common" [![Build Status](https://travis-ci.org/Maarc/ansible-role-redhat-jboss-common.svg?branch=master)](https://travis-ci.org/Maarc/ansible-role-redhat-jboss-common) [![Galaxy](https://img.shields.io/badge/galaxy-maarc.rh--jboss--common-blue.svg?style=flat)](https://galaxy.ansible.com/Maarc/rh-jboss-common)
=================================

A role installing the prerequisites for the Red Hat JBoss middleware products specific roles like:

- [Red Hat JBoss Enterprise Application Platform (EAP)](https://github.com/Maarc/ansible-role-redhat-jboss-eap)
- [Red Hat JBoss Web Server (JWS) - Apache HTTPD](https://github.com/Maarc/ansible-role-redhat-jboss-web-server-httpd)
- [Red Hat JBoss Web Server (JWS) - Apache Tomcat](https://github.com/Maarc/ansible-role-redhat-jboss-web-server-tomcat)


Requirements
------------

The main requirement for this role is RHEL 7.


Description
-----------

This role sets the timezone, some aliases and installs the following packages:

- unzip
- java
- rsync
- net-tools (for netstat)
- psmisc (for pstree)
- vim (for vimdiff)


Role Variables
--------------

| Name              | Default Value       | Description          |
|-------------------|---------------------|----------------------|
| `java_pkg_name` | `java-1.8.0-openjdk-devel` | Used Java 8 JDK. See [recommendation](https://access.redhat.com/solutions/18259). |
| `timezone` | `Europe/Berlin` |  Timezone for the hosts and the logs. |
| `download_dir` | `/tmp` | Directory containing all downloaded artifacts on the remote host. |


Dependencies
------------

No Ansible role is required to use this role.


License
-------

[Apache 2.0](./LICENSE)


Author Information
------------------

* [Marc Zottner](https://github.com/Maarc)
* [Roeland van de Pol](https://github.com/roelandpol)
