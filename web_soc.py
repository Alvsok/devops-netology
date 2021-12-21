import socket

hosts = {'drive.google.com':'1.1.1.1', 'mail.google.com':'2.2.2.2', 'google.com':'172.217.166.46'}
flag = True
while flag:
    for host in hosts:
        old_ip = hosts[host]
        new_ip = socket.gethostbyname(host)
        if old_ip == new_ip:
            print(host, '-', old_ip)
        else:
            print('[ERROR]', host, 'IP mismatch:', old_ip, new_ip)
            flag = False
    

 
