if[["${UID}" -ne 0]]
then
	echo "the user must be a super user to run this script"
	exit(1)
fi


read -p "enter the name of the new user		:" ${USRNAME}
useradd -m ${USRNAME}
if [[${?} -ne 0]]
then
	echo "the above mentioned user has not been created please try again"
	exit(1)
fi


PASSWRD=${DATE}
ENCRPASS=sha256 PASSWRD
echo ${ENCRPASS} | passwd --stdin ${USRNAME}
echo "the user name is ${USRNAME}"
echo "$the password is ${PASSWRD}"
echo -e "the newly created account ,${USRNAME}, can be accessed by the password,${PASSWRD}, and the host number for thne same account is ${UID}"
exit(0)

