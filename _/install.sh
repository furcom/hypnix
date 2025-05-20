echo -e "██╗  ██╗██╗   ██╗██████╗ ███╗   ██╗██╗██╗  ██╗"
echo -e "██║  ██║╚██╗ ██╔╝██╔══██╗████╗  ██║██║╚██╗██╔╝"
echo -e "███████║ ╚████╔╝ ██████╔╝██╔██╗ ██║██║ ╚███╔╝"
echo -e "██╔══██║  ╚██╔╝  ██╔═══╝ ██║╚██╗██║██║ ██╔██╗"
echo -e "██║  ██║   ██║   ██║     ██║ ╚████║██║██╔╝ ██╗"
echo -e "╚═╝  ╚═╝   ╚═╝   ╚═╝     ╚═╝  ╚═══╝╚═╝╚═╝  ╚═╝"
echo -e "███████╗███████╗████████╗██╗   ██╗██████╗"
echo -e "██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗"
echo -e "███████╗█████╗     ██║   ██║   ██║██████╔╝"
echo -e "╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝"
echo -e "███████║███████╗   ██║   ╚██████╔╝██║"
echo -e "╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝"
echo -e "\nCloning Repo...\n"
git clone https://github.com/furcom/hypnix.git ~/hypnix
echo -e "\nSet your username: "
read -r userName
find ~/hypnix -type f -exec sed -i "s/furcom/$userName/g" {} +
sudo nixos-rebuild switch --flake $HOME/hypnix/#hypnix
waypaper
echo -e "\nChoose a wallpaper and than press ENTER to reboot..."
read -r
reboot
