clear
if sudo "echo" true 2>/dev/null; then # if sudo is currently active
  :
else
  if sudo -V true 2>/dev/null; then # if sudo exists
    echo "[-] root is required to install pkgs"
    sudo echo "[-] password ok"
  else
   echo "[-] root is required to install pkgs"
   su -c " echo '[-] password ok'"
  fi
fi

sudo curl -sSL -o -bashset.sh https://raw.githubusercontent.com/aut0-m8/bashset/main/bashset.sh && sudo chmod +x bashset.sh && ./bashset.sh; exit
