#!/bin/bash
validate_password(){
        local password="$1"
        if [[ ${#password} -lt 8 ]]
        then
                echo "weak:password must be at least 8 characters long"
                return 1
        fi
        if ! [[ "$password" =~ [A-Z] ]]
        then
                echo "weak:password must contain atleast one uppercase letter"
                return 1
        fi
        if ! [[ "$password" =~ [a-z] ]]
        then
                echo "weak:password must contain atleast one lowercase letter"
                return 1
        fi
         if ! [[ "$password" =~ [@#$%^] ]];

                then
                        echo "weak:password must atleast contain one special words"
                        return 1
        fi
        echo "strong: password is valid"
        return 0
}
read -p "enter your password: " password
validate_password "$password"

output
rmurs@Murshi MINGW64 ~/roshna
$ ./validatepassword.sh
enter your password: Rosh@4976
strong: password is valid

rmurs@Murshi MINGW64 ~/roshna
$ ./validatepassword.sh
enter your password: eree
weak:password must be at least 8 characters long

rmurs@Murshi MINGW64 ~/roshna
$ ./validatepassword.sh
enter your password: dgguubbgR
weak:password must atleast contain one special words

rmurs@Murshi MINGW64 ~/roshna
$ ./validatepassword.sh
enter your password: ekfgffghg
weak:password must contain atleast one uppercase letter


