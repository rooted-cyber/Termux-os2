R () {
	cd $PREFIX/bin
	if [ -e python ];then
	python ~/Termux_os/.random.py
	else
	pkg install python
	python ~/Termux_os/.random.py
	fi
	}
	fol() {
		cd ~/Termux_os > /dev/null 2>&1
		}
		ban() {
			R
			figlet -f font TERMUX
			R
			figlet -f font OS
			echo
			printf "\033[1;93m::... \033[0m This tool created by rootedcyber \033[1;93m ..::\n\n"
			}
			I-nethunter () {
	cd -
	if [ -e nethunter-fs ] || [ -e kali-arm64 ];then
	cd ~
	./start-nethunter.sh
	else
	fol
	cd os
	cp -f nethunter.sh ~
	cd ~
	bash nethunter.sh
	fi
	}
	I-centos () {
	cd -
	if [ -e centos-fs ];then
	cd ~
	./start-centos.sh
	else
	fol
	cd os
	cp -f centos.sh ~
	cd ~
	bash centos.sh
	fi
	}
	I-debian () {
	cd -
	if [ -e debian-fs ];then
	cd ~ > /dev/null 2>&1
	./start-debian.sh
	else
	fol
	cd os
	cp -f debian.sh ~
	cd ~
	bash debian.sh
	fi
	}
	I-kali () {
	cd -
	if [ -e kali-fs ];then
	cd ~
	./start-kali.sh
	else
	fol
	cd os
	cp -f kali.sh ~
	cd ~
	bash kali.sh
	fi
	}
	I-fedora () {
	cd -
	if [ -e fedora-fs ];then
	cd ~
	./start-fedora.sh
	else
	fol
	cd os
	cp -f fedora.sh ~
	cd ~
	bash fedora.sh
	fi
	}
	I-backbox () {
	cd -
	if [ -e backbox-fs ];then
	cd ~
	./start-backbox.sh
	else
	fol
	cd os
	cp -f backbox.sh ~
	cd ~
	bash backbox.sh
	fi
	}
	I-ubuntu () {
	cd -
	if [ -e ubuntu-fs ];then
	cd ~
	./start-ubuntu.sh
	else
	fol
	cd os
	cp -f ubuntu.sh ~
	cd ~
	bash ubuntu.sh
	fi
	}
	nethunter () {
				cd ~
				if [ -e nethunter-fs ] || [ -e kali-arm64 ];then
				printf "\033[1;92m [ Installed ]\n"
				else
				printf "\033[1;91m [ Not Install ]\n"
				fi
				}
				cent () {
					cd ~
				if [ -e centos-fs ];then
				printf "\033[1;92m [ Installed ]\n"
				else
				printf "\033[1;91m [ Not Install ]\n"
				fi
				}
				debian () {
				cd ~
				if [ -e debian-fs ];then
				printf "\033[1;92m [ Installed ]\n"
				else
				printf "\033[1;91m [ Not Install ]\n"
				fi
				}
				kali () {
					cd ~
				if [ -e kali-fs ];then
				printf "\033[1;92m [ Installed ]\n"
				else
				printf "\033[1;91m [ Not Install ]\n"
				fi
				}
				fedora () {
					cd ~
				if [ -e fedora-fs ];then
				printf "\033[1;92m [ Installed ]\n"
				else
				printf "\033[1;91m [ Not Install ]\n"
				fi
				}
				backbox () {
				cd ~
				if [ -e backbox-fs ];then
				printf "\033[1;92m [ Installed ]\n"
				else
				printf "\033[1;91m [ Not Install ]\n"
				fi
				}
				ubuntu () {
					cd ~
				if [ -e ubuntu-fs ];then
				printf "\033[1;92m [ Installed ]\n"
				else
				printf "\033[1;91m [ Not Install ]\n"
				fi
				}
			menu () {
				clear
				ban
				printf "\033[1;91m[\033[0m1\033[1;91m]\033[1;93m Nethunter ( \033[0m1.2GB \033[1;93m)"
				nethunter
				printf "\033[1;91m[\033[0m2\033[1;91m]\033[1;93m CentOS ( \033[0m66MB\033[1;93m )"
				cent
				printf "\033[1;91m[\033[0m3\033[1;91m]\033[1;93m Kali ( \033[0m45MB\033[1;93m )"
				kali
				printf "\033[1;91m[\033[0m4\033[1;91m]\033[1;93m Debian ( \033[0m41MB\033[1;93m )"
				debian
				printf "\033[1;91m[\033[0m5\033[1;91m]\033[1;93m Fedora ( \033[0m35MB\033[1;93m )"
				fedora
				printf "\033[1;91m[\033[0m6\033[1;91m]\033[1;93m Backbox ( \033[0m26MB\033[1;93m )"
				backbox
				printf "\033[1;91m[\033[0m7\033[1;91m]\033[1;93m Ubuntu ( \033[0m24MB\033[1;93m )"
				ubuntu
				printf "\033[1;91m[\033[0m8\033[1;91m]\033[1;93m Exit\n\n\n"
				echo -e -n "\033[1;92mTermux\033[0m@\033[1;93mOS \033[1;97m--> \033[0m"
				read a
				case $a in
				1)I-nethunter ;;
				2)I-cent ;;
				3)I-kali ;;
				4)I-debian ;;
				5)I-fedora ;;
				6)I-backbox ;;
				7)I-ubuntu ;;
				8)exit ;;
				*)menu ;;
				esac
				}
				cd $PREFIX/bin
				if [ -e os ];then
				menu
				else
				bash ~/Termux_os/setup.sh
				fi