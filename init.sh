#Init 

#Prerequis
#Installation de git avec la commande : sudo apt-get install git

#Gestion des utilisateur
sudo useradd spyrix
sudo passwd 111111 spyrix
usermod -aG sudo spyrix
sudo useradd kedorev
sudo passwd -e 111111 kedorev
usermod -aG sudo kedorev


#Installtion de zsh
sudo -u apt-get install zsh
$ sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cd /home/kedorev
sed -i "s/robbyrussell/dallas/" ./.zshrc

#Modification des sources
#Aucune modification, les sources sont deja a jour

#Ajout des lib et archi
sudo apt-get install lib32gcc1 software-properties-common -y
sudo dpkg --add-architecture i386
sudo apt-get update
sudo apt-get upgrade


#Paramétrage des IP


#Installation de steam

#Cette action devra se faire à la main : sudo apt-get install steamcmd -y
