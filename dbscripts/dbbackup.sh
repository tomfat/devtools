#!/bin/sh

filename=db.sql
date=`date +%Y%m%d`
if [[ -f $filename.$date.tar.gz ]]; then
    echo "INFO: today's back file already generated~ quit"
    exit
fi

mysqldump -hlocalhost -uroot -p  db_name > $filename.$date

tar -zcvf $filename.$date.tar.gz $filename.$date
rm -f $filename.$date
