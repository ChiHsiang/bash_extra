#!/bin/bash

#mysql_dump_robots () {
#  PS3='Please enter your choice: '
#  select tool in 'mysql' 'mysqldump'
#  do
#    echo $tool
#    break;
#  done;

#}
#cat <<End-of-message
#-------------------------------------
#This is line 1 of the message.
#This is line 2 of the message.
#This is line 3 of the message.
#This is line 4 of the message.
#This is the last line of the message.
#-------------------------------------
#End-of-message


#$ mysqldump -u [uname] -p[pass] --all-databases > all_db_backup.sql
#If it's specific tables within a DB, then:
#
#$ mysqldump -u [uname] -p[pass] db_name table1 table2 > table_backup.sql
#You can even go as far as auto-compressing the output using gzip (if your DB is very big):
#
#$ mysqldump -u [uname] -p[pass] db_name | gzip > db_backup.sql.gz
#If you want to do this remotely and you have the access to the server in question, then the following would work (presuming the MySQL server is on port 3306):
#
#$ mysqldump -P 3306 -h [ip_address] -u [uname] -p[pass] db_name > db_backup.sql
