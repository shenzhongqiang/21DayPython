for i in $(seq 100 130)
    do
        user="user$i"
        passwd=""
        for j in $(seq 1 6)
            do
                digit=$((RANDOM % 10))
                passwd="${passwd}${digit}"
            done
        echo $user $passwd
        echo "$user:$passwd" |chpasswd
    done
