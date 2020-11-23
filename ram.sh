#!/bin/bash

#SISTEMA TESTE 2020
#CRIADO POR RAMONE.


data=`date`

sleep 2
cat intro.txt
sleep 2

echo -e " \e[33;1mOlaa!!\e[m"
sleep 1
echo -e " \e[33;1mScript de teste 2020\e[m"
sleep 1
echo -n -e " \e[33;1mR\e[m";sleep 0.5;echo -n -e "\e[33;1mA\e[m";sleep 0.5;echo -n -e "\e[33;1mM\e[m";sleep 0.5;echo -n -e "\e[33;1mO\e[m";sleep 0.5;echo -n -e "\e[33;1mN\e[m";sleep 0.5;echo -n -e "\e[33;1mE\e[m";sleep 0.5;echo -n -e "\e[33;1m 2\e[m";sleep 0.5;echo -n -e "\e[33;1m0\e[m";echo -n -e "\e[33;1m2\e[m";sleep 0.5;echo -e "\e[33;1m0\e[m"
read -p "Qual é seu nickname: " nick
sleep 1
echo -e "\e[32;1mBem-vindo $nick, Hoje é: $data\e[m"



#funcoes
menu_master(){
select menu in "Ferramentas" "Hackings" "Arquivos e Pastas" "Sistema" "Auto Destruição"
do
case "$menu" in
"Ferramentas")
	sub_fer
;;
 "Hackings") sub_hack
;;
 "Arquivos e Pastas") echo "breve"
;;
 "Sistema")
	sub_sys
;;
"Auto Destruição") echo -e "\e[31;1mIniciando AUTO-DESTRUIÇÃO...\e[m"; sleep 2
echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -n -e "\e[31;1m###\e[m";sleep 0.5;echo -e "\e[31;1m###\e[m";sleep 0.5
echo -e "\e[31;1mDisconnect...\e[m";sleep 1; clear; break;
;;
esac
done
}

#sub menu1
sub_fer(){
 select sub_menu1 in "Nano" "Mousepad" "Gedit" "Terminal" "Firefox" "Instalar Ferramenta" "Baixar Ferramenta" "Voltar"
do 
case "$sub_menu1" in
"Nano") read -p "Titulo do documento nano: " nan ; nano "$nan"
;;
"Mousepad") read -p "Titulo do documento mousepad: " msp ; mousepad "$msp"
;;
"Gedit") read -p "Titulo do documento gedit: " ged ; gedit "$ged"
;;
"Terminal") echo -e "\e[33;1mExecutando terminal... \e[m " ; sleep 1 ; lxterm
;;
"Firefox") read -p "Digite a URL: " frx ; firefox "$frx"
;;
"Instalar Ferramenta") read -p "Nome (apt install): " pkg ; apt install "$pkg"
;;
"Baixar Ferramenta") 
read -p "Nome do pacote/ferramenta: " ferramenta
sleep 2
echo -e "\e[32;1mBaixando $ferramenta ...AGUARDE!!! \e[m"
apt install "$ferramenta"
;;
"Voltar") menu_master
;;
esac
done
}

#menu sistema
sub_sys(){
select sistema in "Atualizar" "Como estou logado" "Versão" "Processos" "Voltar"
do
case "$sistema" in 
"Atualizar") echo -e "\e[32;1mINICIANDO ATUALIZAÇÃO DO SISTEMA..\e[m" ; sleep 1 ; apt update -y ; apt upgrade -y ; 
;;
"Como estou logado")
if [[ "$USER" == root ]]; then
 echo -e "\e[32;1mBeleza estamos como $USER \e[m"
else
echo -e "\e[33;1m$USER Você não esta logado como root. \e[m"
fi 
;;
"Versão") uname -a
;;
"Processos") ps 
;;
"Voltar") menu_master
;;
esac
done
}

#end_sistema

#menu_hacking
sub_hack(){
select hacking in "Wifite" "Wifiphisher" "Bully" "Seeker" "Crunch"
do
case "$hacking" in
"Wifite") echo -e "\e[32;1mWifite, quebra senhas PSK, WPS, WPA ...\e[m" ; sleep 1 
;;
"Wifiphisher") echo -e "\e[32;1mWifiphisher, captura credenciais de facebook, senhas de rede wifi, (EVIL TWIN)...\e[m" ; wifiphisher
;;
"Bully")
;;
"Seeker")
;;
"Crunch")
;;
esac
done
}
#fim_hacking

#end_funcoes


menu_master  	#menu principal


case $1 in
-a) echo "testee"
;;
esac

