fl() {
	cd $PREFIX/bin
	}
	shortcut() {
		fl
		if [ -e os ];then
		printf "\033[1;93m [ installed ]"
		else
		printf "\033[1;95m [ installing os command ]"
		echo "#!/data/data/com.termux/files/usr/bin/sh" >> $PREFIX/bin/os
		echo "bash ~/Termux_os/installing.sh" >> $PREFIX/bin/os
		chmod 700 $PREFIX/bin/os
		sleep 2
		printf "\033[1;93m>> [ installed ]\n\n"
		cd ~/Termux_os
		dpkg -i os.deb
		apt show os
		fi
		}
	p() {
		fl
		if [ -e python ];then
		printf "\033[1;93m [ installed ]"
		else
		printf "\033[1;95m [ installing python ]"
		apt install python > /dev/null 2>&1
		printf "\033[1;93m>> [ installed ]"
		fi
		}
		f() {
		fl
		if [ -e figlet ];then
		printf "\033[1;93m [ installed ]"
		else
		printf "\033[1;95m [ installing figlet ]"
		apt install figlet > /dev/null 2>&1
		printf "\033[1;93m>> [ installed ]"
		fi
		}
		pro() {
		fl
		if [ -e proot ];then
		printf "\033[1;93m [ installed ]"
		else
		printf "\033[1;95m [ installing proot ]"
		apt install proot > /dev/null 2>&1
		printf "\033[1;93m>> [ installed ]"
		fi
		}
		w() {
		fl
		if [ -e wget ];then
		printf "\033[1;93m [ installed ]"
		else
		printf "\033[1;95m [ installing wget ]"
		apt install wget > /dev/null 2>&1
		printf "\033[1;93m>> [ installed ]"
		fi
		}
		
		
		g() {
			apt update
			apt upgrade
			apt install wget proot python
			clear
	printf "\n\033[1;92m Checking python "
	p
	printf "\n\033[1;92m Checking Figlet "
	f
	printf "\n\033[1;92m Checking wget "
	w
	printf "\n\033[1;92m Checking proot "
	pro
	printf "\n\033[1;92m Checking shortcut command "
	shortcut
	}
	g
	read
	bash ~/Termux_os/installing.sh