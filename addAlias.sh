#!/bin/bash

if [[ ! -e $1 ]] ; then echo -e "incorrect address for a key!"; exit 1; fi

GREEN="\033[1;32m"
RED="\033[1;31m"
NORMAL="\033[0;39m"

echo $SHELL | grep zsh
if (( $? == 0 )); then  echo -e "zsh detected B-)"; echo "source $HOME/.bash_aliases" >> ~/.zshrc; fi 

#echo -en "$GREEN \rPrint full way to your \"name@fb.ssh.key\"$NORMAL > "
keyway=$1

if [ $(uname) = "Darwin" ]; then
	echo -en "hmmm Mac OS detected B-)\n"
	name=$(echo $keyway | grep -Eo '[a-z,A-Z]*@' | grep -Eo '[a-z,A-Z]*')
else
	echo -en "Linux OS\n"
	name=$(echo $keyway | grep -Eo '[a-Z]*@' | grep -Eo '[a-Z]*')
fi

touch ~/.bash_aliases
echo -e "alias pay='ssh -i $keyway $name@172.25.18.2'\n\
alias pay='ssh -i $keyway $name@172.25.18.2'\n\
alias fcp='ssh -i $keyway $name@172.25.18.1'\n\
alias pay-new='ssh -i $keyway $name@172.25.18.3'\n\
alias sms='ssh -i $keyway $name@172.25.18.140'\n\
alias reg-01='ssh -i $keyway $name@172.25.22.1'\n\
alias reg-01-new='ssh -i $keyway $name@172.25.22.2'\n\
alias transfer='ssh -i $keyway $name@172.25.26.1'\n\
alias bkfon-fcp='ssh -i $keyway $name@172.21.18.1'\n\
alias financial-01='ssh -i $keyway $name@172.21.32.1'\n\
alias racing-01='ssh -i $keyway $name@172.21.23.1'\n\
alias racing-db='ssh -i $keyway $name@172.21.23.33'\n\
alias bkfon-new='ssh -i $keyway $name@172.22.26.3'\n\
alias service-analytics='ssh -i $keyway $name@172.25.18.27'\n\
alias 1account-01='ssh -i $keyway $name@172.21.7.1'\n\
alias 1account-02='ssh -i $keyway $name@172.21.7.2'\n\
alias 1account-03='ssh -i $keyway $name@172.21.7.3'\n\
alias 1account-04='ssh -i $keyway $name@172.21.7.4'\n\
alias 1account-05='ssh -i $keyway $name@172.21.7.5'\n\
alias 5account-01='ssh -i $keyway $name@172.25.7.1'\n\
alias 5account-02='ssh -i $keyway $name@172.25.7.2'\n\
alias 5account-03='ssh -i $keyway $name@172.25.7.3'\n\
alias 5account-04='ssh -i $keyway $name@172.25.7.4'\n\
alias 5account-05='ssh -i $keyway $name@172.25.7.5'\n\
alias 1toto-11='ssh -i $keyway $name@172.21.4.11'\n\
alias 1toto-12='ssh -i $keyway $name@172.21.4.12'\n\
alias 1toto-13='ssh -i $keyway $name@172.21.4.13'\n\
alias 6toto-11='ssh -i $keyway $name@172.26.4.11'\n\
alias 6toto-12='ssh -i $keyway $name@172.26.4.12'\n\
alias 6toto-13='ssh -i $keyway $name@172.26.4.13'\n\
alias sgh='ssh -i $keyway $name@172.25.30.69'\n\
alias root-srv='ssh -i $keyway $name@172.26.5.30'\n\
alias fastgames='ssh -i $keyway $name@172.22.26.2'\n\
alias elk='ssh -i $keyway $name@172.25.18.83'\n\
alias 4pay='ssh -i $keyway $name@172.24.18.2'\n\
alias 4fcp='ssh -i $keyway $name@172.24.18.8'\n\
alias 4sms='ssh -i $keyway $name@172.24.18.140'\n\
alias 4account='ssh -i $keyway $name@172.24.7.1'\n\
alias 4reg='ssh -i $keyway $name@172.24.22.3'\n\
alias 4racing-01='ssh -i $keyway $name@172.24.23.1'\n\
alias 4racing-db='ssh -i $keyway $name@172.24.23.33'\n\
alias 4transfer='ssh -i $keyway $name@172.24.26.1'\n\
alias 4service-pay-new='ssh -i $keyway $name@172.24.18.3'\n\
alias 4virtual-games='ssh -i $keyway $name@172.24.26.12'\n\
alias prodtest-fcp='ssh -i $keyway $name@172.25.36.18'\n\
alias prodtest-account='ssh -i $keyway $name@172.25.36.7'" > ~/.bash_aliases

echo -e "alias servers='echo -e \"$GREEN \r#service $NORMAL\n\
5service-fcp$RED	fcp$NORMAL	172.25.18.1\n\
5service-pay$RED	pay$NORMAL	172.25.18.2\n\
5service-pay-new$RED	pay-new$NORMAL		172.25.18.3\n\
5service-sms$RED	sms$NORMAL	172.25.18.140\n\
5reg-01$RED		reg-01$NORMAL	172.25.22.1\n\
5transfer$RED	transfer$NORMAL		172.25.26.1\n\
5service-analytics$RED	service-analytics$NORMAL	172.25.18.27\n\
bkfon-fcp$RED	bkfon-fcp$NORMAL	172.21.18.1\n\
bkfon-new$RED	bkfon-new$NORMAL	172.22.26.3\n\
financial-01$RED	financial-01$NORMAL	172.21.32.1\n\
\n\
$GREEN \r#racing $NORMAL\n\
1racing-01$RED	racing-01$NORMAL	172.21.23.1\n\
1racing-db$RED	racing-db$NORMAL	172.21.23.33\n\
\n\
$GREEN \r#accounts $NORMAL\n\
1account-01$RED	1account-01$NORMAL	172.21.7.1\n\
1account-02$RED	1account-02$NORMAL	172.21.7.2\n\
1account-03$RED	1account-03$NORMAL	172.21.7.3\n\
1account-04$RED	1account-04$NORMAL	172.21.7.4\n\
1account-05$RED	1account-05$NORMAL	172.21.7.5\n\
5account-01$RED	5account-01$NORMAL	172.25.7.1\n\
5account-02$RED	5account-02$NORMAL	172.25.7.2\n\
5account-03$RED	5account-03$NORMAL	172.25.7.3\n\
5account-04$RED	5account-04$NORMAL	172.25.7.4\n\
5account-05$RED	5account-05$NORMAL	172.25.7.5\n\
\n\
$GREEN \r#TOTO $NORMAL\n\
1toto-11$RED	1toto-11$NORMAL		172.21.4.11\n\
1toto-12$RED	1toto-12$NORMAL		172.21.4.12\n\
1toto-13$RED	1toto-13$NORMAL		172.21.4.13\n\
6toto-11$RED	6toto-11$NORMAL		172.26.4.11\n\
6toto-12$RED	6toto-12$NORMAL		172.26.4.12\n\
6toto-12$RED	6toto-13$NORMAL		172.26.4.13\n\
\n\
$GREEN \r#other $NORMAL\n\
5office-sgh$RED	sgh$NORMAL	172.25.30.69\n\
6root-srv$RED	root-srv$NORMAL	172.26.5.30\n\
2bkfon-fastgames$RED	fast-games$NORMAL	172.22.26.2\n\
openvpn	172.25.43.78\n\
elk$RED	elk$NORMAL	172.25.18.83\n\
\n\
$GREEN \r#test $NORMAL\n\
4service-fcp$RED	4fcp$NORMAL	172.24.18.8(1)\n\
4service-pay$RED	4pay$NORMAL	172.24.18.2\n\
4service-sms$RED	4sms$NORMAL	172.24.18.140\n\
4account-01$RED	4account$NORMAL		172.24.7.1\n\
4reg-01$RED		4reg$NORMAL	172.24.22.3\n\
4racing-01$RED	4racing-01$NORMAL	172.24.23.1\n\
4racing-db$RED	4racing-db$NORMAL	172.24.23.33\n\
4service-pay-new$RED 4service-pay-new$NORMAL	172.24.18.3\n\
4transfer$RED   4transfer$NORMAL        172.24.26.1\n\
4virtual-games$RED   4virtual-games$NORMAL        172.24.26.12\n\
prodtest-fcp$RED	prodtest-fcp$NORMAL	172.25.36.18\n\
prodtest-account$RED	prodtest-account$NORMAL	172.25.36.7\"'" >> ~/.bash_aliases
