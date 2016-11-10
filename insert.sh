#!/bin/bash

i=1;

while [ $i -le 100 ]
do
mysql -uroot -proot -h db.test.com test -e "insert into test(id2) values($i);"
let i=i+1
done

------
select password ('qqqq') ===generator hash
