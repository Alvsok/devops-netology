#!/usr/bin/env bash
hosts=(192.168.0.1 173.194.222.113 87.250.250.242)
port=80
flag=0
while (($flag == 0))
do    
    for host in "${hosts[@]}"
    do
        curl -Is -o /dev/null $host:$port
        flag=$?
        if (($flag == 0))
        then
            echo $host >> error
            exit
    done
done


while ((1 == 1))
do
    curl https://localhost:4757    
    if (($? == 0))
    then
        exit
    fi
    date >> curl.log
    sleep 9
done


#!/usr/bin/env bash
hosts=(192.168.0.1 173.194.222.113 87.250.250.242)
port=80
flag=0
while (($flag == 0))
do    
    for host in "${hosts[@]}"
    do
        curl -Is -o /dev/null $host:$port
        flag=$?
        if (($flag == 0))
        then
            echo $host >> error
            exit
        fi
    done
done







while ((1 == 1))
do
    curl https://localhost:4757
    date >> curl.log
    if (($? == 0))
    then
        exit    
    sleep 9
done


curl -Is -o "curl1.log" https://youtube.com/


https://youtube.com/

curl -Is -o /dev/null https://youtube.com/

curl -Is https://youtube.com/ -O curl32.log


curl -Is https://youtube.com/

curl https://youtube.com/

echo $date



curl -Is -o "asbasdabadsb" https://youtube.com/

 | head -1


