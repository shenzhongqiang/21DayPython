for i in $(seq 100 130)
    do
        user="user$i"
        passwd=$user
        useradd -m $user -p $(openssl passwd -1 $passwd) -s /bin/bash
        adduser $user gaodun
        rsync -avq --exclude /root/21DayPython/.git /root/21DayPython /home/$user/
        chown -R $user:$user /home/$user/21DayPython
    done

