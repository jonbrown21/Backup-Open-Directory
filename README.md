Backup-Open-Directory
=====================

Backup an Open Directory Master with Bash

Open directory on the Mac OSX Server platform is a great directory platform using Kerberos and LDAP however I have found that there are two steps to a flawless directory experience. Since the directory is such a delicate system I find it necessary to create a backup of the OD Master at least once a day in the event that something goes south you can restore from any day in the past with ease. The other method is to use OD Replicas, and to use them often. A replica is far easier to fix than the actual OD Master if the master goes bad, and you have no backup then you have to decommission and start over, with replicas you can demote, and recreate without even having to deal with the OD Master.

Usage
=====================
