clear
{
cat <<- WSL
                        __           
 ___ _ __   ___   ___  / _| ___ _ __ 
/ __| '_ \ / _ \ / _ \| |_ / _ \ '__|
\__ \ |_) | (_) | (_) |  _|  __/ |   
|___/ .__/ \___/ \___/|_|  \___|_|   
    |_|                              

WSL

echo

  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m From Name   : "'\033[32;1m\n')" from
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m From mail   : "'\033[32;1m\n')" email
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Send To     : "'\033[32;1m\n')" to   
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Subject     : "'\033[32;1m\n')" sub 
  read -p "$(printf "\033[31;1m[\033[37;1m*\033[31;1m]\033[37;1m Message     : "'\033[32;1m\n\n')" mes
  echo ""
  read -p "$(printf " * * * Enter To Send! * * *")" scan
  sendemail -xu tutorial13456789@gmail.com -xp RWb3Zq8ywS5HnJat -s smtp-relay.brevo.com:587 -f "$from <$email>" -t "$to" -u "$sub" -m "$mes" > /dev/null 2>&1 &&
  printf "\n\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m successfully sendent!..\n"
  sleep 2s
  read -p "$(printf "\033[31;1m[\033[32;1m*\033[31;1m]\033[37;1m Resend? [y/n] : "'\033[34;1m')" scan
        echo
        while true
        do
                if [ $scan = "y"  ];
                then
                spoof

                else [ $scan != "n" ]
                menu5
                fi
        done



}
