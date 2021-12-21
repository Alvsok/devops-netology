#!/usr/bin/env bash
hosts=(192.168.0.1 173.194.222.113 87.250.250.242)
port=80
for i in {1..5}
do    
    for host in "${hosts[@]}"
    do
        curl -Is $host:$port >> try_hosts.log
    done
done

curl -Is https://youtube.com | head -n 1
curl -Is https://itsecforu.ru | head -1

curl -Is -o /dev/null https://youtube.com
curl -Is -o /dev/null https://youtccw456dube.com

err=$(echo $?)

echo $?



22:11:11 alex@upc(0):~/bash$ cat check2_hosts
hosts=(192.168.0.1 173.194.222.113 87.250.250.24)
timeout=5
res=0

while (($res == 0))
do
    for h in ${hosts[@]}
    do
	curl -Is --connect-timeout $timeout $h:80 >/dev/null
	res=$?
	if (($res != 0))
	then
	    echo "    ERROR on " $h status=$res >>hosts2.log
	fi
    done
done