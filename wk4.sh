if [[${UID} -ne 0]]
then
	echo "THE USER MUST BE ROOT."
	exit 1
fi
read -p "ENTER THE USERNAME OF THE ACCOUNT YOU WANT TO CREATE": ${USRNAME}
useradd -m ${USRNAME}
read -p "enter the default password for the the above mentioned user	:" ${PASSWRD}
echo ${PASSWRD} | passwd --stdin ${USRNAME}
echo "the newly created account ,${USRNAME}, can be accessed by the password,${PASSWRD}, and the host number for thne same account is ${UID}"
exit 0