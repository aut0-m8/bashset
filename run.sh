clear
if sudo -n true 2>/dev/null; then # if sudo is currently active
  :
else
  if sudo -V 1>/dev/null; then # if sudo exists
    echo "[-] root is required for this script"
    sudo echo "[-] password ok"
  else
  # echo "[!] enter your package manager command"
  # read -e -p "[>] " -i "" mgr
  # echo "[-] root is required for this script"
  # $mgr upgrade -y sudo
  # su -c " echo '[-] password ok'"
   echo "[-] please install/upgrade sudo"; exit 1
  fi
fi

sudo curl -sSL -o -bashset.sh https://raw.githubusercontent.com/aut0-m8/bashset/main/bashset.sh && sudo chmod +x bashset.sh && ./bashset.sh
