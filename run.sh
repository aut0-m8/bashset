clear
echo "[-] root is required to install pkgs"
sudo echo "[-] password ok" \
&& curl -H 'Pragma: no-cache' -sSL -o -bashset.sh https://raw.githubusercontent.com/aut0-m8/bashset/main/bashset.sh \
&& sudo chmod +x bashset.sh \
&& ./bashset.sh
