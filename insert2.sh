#!/bin/bash
i=1
read -p "type in which port:" port
read -p "type in which id:" id
for mac in $(while read p; do echo $p; done < /tmp/switch/${port})
do

mysql -uroot -proot -h db.root.com inventory -e "update InventoryMNG_port set MAC='$mac' where CI_id=${id} and name=$i;"

let i=i+1
#cat sw28.port |grep 1/1/|awk '{print $10}'|awk  '$1=$1' RS= OFS=,

#for file in $(ls *.port); do cat $file |grep 1/1/|awk '{print $10}' > $file.1; done



done

