#!/bin/bash

path=""
directory="`date +%Y-%m-%d`"
fullpath="$path$directory"
bucket_directory=""
bucket=""
export AWS_ACCESS_KEY_ID=
export AWS_SECRET_ACCESS_KEY=
export AWS_DEFAULT_REGION=

DB_USER=""
DB_PASSWD=""
HN=`hostname | awk -F. '{print $1}'`
# Create the backup directory
mkdir -p $fullpath

# Remove backups older than 10 days
find $path -maxdepth 1 -type d -mtime +10 -exec rm -rf {} \;

# Backup each database on the system
for db in $(mysql --user=$DB_USER --password=$DB_PASSWD -e 'show databases' -s --skip-column-names|grep -viE '(staging|performance_schema|information_schema)');
do mysqldump --user=$DB_USER --password=$DB_PASSWD --events --opt --single-transaction $db | gzip > "$fullpath/mysqldump-$HN-$db-$(date +%Y-%m-%d).gz";
done

#sync to amazon
aws s3 sync . s3://$bucket/$bucket_directory
