#!/bin/bash -x
shopt -s extglob

read -p "Enter First Name:" firstName
read -p "Enter Last Name:" lastName
read -p "Enter E-mail:" eMail
read -p "Enter Phone Number:" phnNo
read -p "Enter Password:" password

fNamePat="^[[:upper:]]{1}[a-zA-Z]{2,}$"
lNamePat="^[[:upper:]]{1}[a-zA-Z]{2,}$"
eMailPat="^[a-zA-Z0-9]+([._+#-][a-zA-Z0-9]+)*@[a-zA-Z]+.[a-zA-Z]{2,4}(.[a-zA-Z]{2,2})?$"
phnNoPat="^[0-9]{1,3}[ ][1-9]{1,1}[0-9]{9,9}$"
passwordPat="^[a-zA-Z0-9]*[~!@#$%^&*]{1}[a-zA-Z0-9]*$"

if [[ $firstName =~ $fNamePat ]];
then
    if [[ $lastName =~ $lNamePat ]];
    then
        if [[ $eMail =~ $eMailPat ]];
        then
            if [[ $phnNo =~ $phnNoPat ]];
            then
                echo $password | grep "[A-Z]" | grep "[0-9]"
                if [[ ${#password} -ge 8 && $? -eq 0 && $password =~ $passwordPat ]]
                then
                    echo valid
                else
                    echo Invalid Password
                fi
            else
                echo Invalid phone number
            fi
        else
            echo Invalid E-mail
        fi
    else
        echo invalid lastname
    fi
else
    echo invalid first name
fi
