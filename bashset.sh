echo "[-] script is in beta, check back later. contribute by making a pull request of this script. open repo?"
read -p "[y/N] " yn

case $yn in
  y ) xdg-open https://github.com/aut0-m8/bashset;;
  n ) exit 0;;
  * ) exit 1;;
esac
exit 0;;
