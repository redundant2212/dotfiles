opt=$(echo -e "1.Lock\n2.Reboot\n3.Shutdown\n4.Logout" | rofi -dmenu -p "Session")
opt=${opt:2}

if [ "$opt" == "Reboot" ];then
		
		optsub=$(echo -e "1.Yes\n2.No" | rofi -dmenu -p "Are you sure?")
		optsub=${optsub:2}
		
		if [ "$optsub" == "Yes" ];then
				reboot
		
			else
				exit 1

		fi
fi	

if [ "$opt" == "Shutdown" ];then
		
		optsub=$(echo -e "1.Yes\n2.No" | rofi -dmenu -p "Are you sure?")
		optsub=${optsub:2}
		
		if [ "$optsub" == "Yes" ];then
				shutdown now
			
			else
				exit 1
		fi

fi

if [ "$opt" == "Lock" ];then
	
	i3lock -e -u -B=sigma -k --timecolor=FFFFFFFF --timestr="%I:%M" --timepos="90:70" --datecolor=FFFFFFFF 

fi

if [ "$opt" == "Logout" ];then

		optsub=$(echo -e "1.Yes\n2.No" | rofi -dmenu -p "Are you sure?")
		optsub=${optsub:2}
		
		if [ "$optsub" == "Yes" ];then
				$(i3 exit)
			
			else
				exit 1
		fi
fi
