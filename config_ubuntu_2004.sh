#		super usuário
cd ~/Downloads
sudo su

#		update e upgrade
apt-get update
apt-get -y upgrade

# ===============================================================================================
#		instalações apt-get
# ===============================================================================================
install_by_aptget() {
	apt-get install gimp inkscape git flatpak putty kdenlive -y
}

install_repositorys() {
	add-apt-repository ppa:kdenlive/kdenlive-stable
	apt-get update
}
# ===============================================================================================
#		Snap
# ===============================================================================================
#		instalação de utilitários na loja Snap, versões estáveis.
install_snaps() {
	snap install slack --classic
	snap install discord --classic
	snap install blender --classic
	snap install telegram-desktop --classic
	snap install vscode --classic
	snap install postman --classic
}

# ===============================================================================================
#
#		Configurações manuais
#
# ===============================================================================================

# ===============================================================================================
#		microsoft edge 				-> https://sempreupdate.com.br/como-instalar-o-navegador-microsoft-edge-no-ubuntu/
# ===============================================================================================
install_edge() {
	curl https://packages.microsoft.com/keys/microsoft.asc > microsoft
	gpg –dearmor microsoft
	sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
	echo deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main > /etc/apt/sources.list.d/microsoft-edge-dev.list
	sudo apt update && sudo apt install microsoft-edge-dev
}

# ===============================================================================================
#		whatsapp 					-> https://sempreupdate.com.br/como-instalar-o-whatsapp-for-linux-no-linux/#:~:text=WhatsApp%20for%20Linux%20%C3%A9%20um%20aplicativo%20de%20desktop,%C3%A9%20um%20cliente%20desktop%20do%20WhatsApp%20para%20Linux.
# ===============================================================================================
install_whats_step1() {
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
}
#	sudo reboot
install_whats_step2() {
	flatpak install flathub com.github.eneshecan.WhatsAppForLinux
#	flatpak run com.github.eneshecan.WhatsAppForLinux
}

# ===============================================================================================
#		nvm (Node Version Manager) 			-> https://www.treinaweb.com.br/blog/instalando-e-gerenciando-varias-versoes-do-node-js-com-nvm/
# ===============================================================================================
install_nvm(){
	wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
}

# ===============================================================================================
#		sdkman 					-> https://sdkman.io/install
# ===============================================================================================
isntall_sdkman() {
	curl -s "https://get.sdkman.io" | bash
}

# ===============================================================================================
#		onlyoffice 					-> https://www.onlyoffice.com/pt/download-desktop.aspx?from=default
# ===============================================================================================
install_onlyoffice() {
	wget https://download.onlyoffice.com/install/desktop/editors/linux/onlyoffice-desktopeditors_amd64.deb?_ga=2.65486382.1438829286.1652551573-1847889931.1652551573 -O onlyoffice.deb
	dpkg -i onlyoffice.deb
	apt --fix-broken install -y
}

# ===============================================================================================
#		godot						-> https://godotengine.org/download/linux
# ===============================================================================================
install_godot() {
	wget https://downloads.tuxfamily.org/godotengine/3.4.4/Godot_v3.4.4-stable_x11.64.zip -O godot.zip
	wget https://w7.pngwing.com/pngs/22/570/png-transparent-godot-game-engine-computer-software-github-free-and-open-source-software-engine-3d-computer-graphics-video-game-transport.png -o Godot.png
	mv Godot.png /opt/godot/Godot.png
	unzip godot.zip -d /opt/godot
	echo -e "[Desktop Entry]\nName=Godot\nComment=IDE Godot\nKeywords=documentation;information;manual;help;\nOnlyShowIn=GNOME;Unity;\nExec=/opt/godot/Godot\nIcon=/opt/godot/godot.jpg\nStartupNotify=true\nTerminal=false\nType=Application\nCategories=GNOME;GTK;Core;Documentation;Utility;\nMimeType=x-scheme-handler/ghelp;x-scheme-handler/help;x-scheme-handler/info;x-scheme-handler/man;\nX-Ubuntu-Gettext-Domain=yelp" > /usr/share/applications/Godot.desktop
}

# ===============================================================================================
#		Spring Tool Suíte 4						-> https://spring.io/tools
# ===============================================================================================
install_sts4() {
	wget https://download.springsource.com/release/STS4/4.14.1.RELEASE/dist/e4.23/spring-tool-suite-4-4.14.1.RELEASE-e4.23.0-linux.gtk.x86_64.tar.gz -O sts4.tar.gz
	tar -xvzf sts4.tar.gz
	mv sts-4.14.1.RELEASE /opt
	echo -e "[Desktop Entry]\nName=Spring Tool Suite4\nComment=IDE SpringToolSuite4\nKeywords=documentation;information;manual;help;\nOnlyShowIn=GNOME;Unity;\nExec=/opt/sts-4.14.1.RELEASE/SpringToolSuite4\nIcon=/opt/sts-4.14.1.RELEASE/icon.xpm\nStartupNotify=true\nTerminal=false\nType=Application\nCategories=GNOME;GTK;Core;Documentation;Utility;\nMimeType=x-scheme-handler/ghelp;x-scheme-handler/help;x-scheme-handler/info;x-scheme-handler/man;\nX-Ubuntu-Gettext-Domain=yelp" > /usr/share/applications/SpringToolSuite4.desktop
}



# ===============================================================================================
#		Figma								-> https://sempreupdate.com.br/como-instalar-o-figma-for-linux-no-ubuntu-fedora-debian-e-opensuse/#:~:text=Figma%20for%20Linux%20%C3%A9%20um%20clone%20do%20Figma,o%20Figma%20no%20Ubuntu%2C%20execute%20o%20comando%20abaixo.
# ===============================================================================================
install_figma() {
	flatpak install flathub io.github.Figma_Linux.figma_linux
}


# ===============================================================================================
#		Android Studio								-> https://sempreupdate.com.br/como-instalar-o-figma-for-linux-no-ubuntu-fedora-debian-e-opensuse/#:~:text=Figma%20for%20Linux%20%C3%A9%20um%20clone%20do%20Figma,o%20Figma%20no%20Ubuntu%2C%20execute%20o%20comando%20abaixo.https://r4---sn-bg07dnsl.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.14/android-studio-2021.2.1.14-linux.tar.gz?mh=ml&pl=52&shardbypass=sd&redirect_counter=1&cm2rm=sn-8p8v-0qpe7l&req_id=f0a8a393e45c334f&cms_redirect=yes&mip=2804:1b3:3107:1b71:8cae:b56c:6eae:97fc&mm=42&mn=sn-bg07dnsl&ms=onc&mt=1653005455&mv=u&mvi=4&rmhost=r5---sn-bg07dnsl.gvt1.com&smhost=r1---sn-bg07dnr7.gvt1.com
# ===============================================================================================
install_androidStudio() {
	wget 'https://r4---sn-bg07dnsl.gvt1.com/edgedl/android/studio/ide-zips/2021.2.1.14/android-studio-2021.2.1.14-linux.tar.gz?mh=ml&pl=52&shardbypass=sd&redirect_counter=1&cm2rm=sn-8p8v-0qpe7l&req_id=f0a8a393e45c334f&cms_redirect=yes&mip=2804:1b3:3107:1b71:8cae:b56c:6eae:97fc&mm=42&mn=sn-bg07dnsl&ms=onc&mt=1653005455&mv=u&mvi=4&rmhost=r5---sn-bg07dnsl.gvt1.com&smhost=r1---sn-bg07dnr7.gvt1.com' -O android-studio.tar.bz2
	tar -xf android-studio.tar.bz2
	echo -e "[Desktop Entry]\nName=android-studio\nComment=IDE android-studio\nKeywords=documentation;information;manual;help;\nOnlyShowIn=GNOME;Unity;\nExec=/opt/android-studio/bin/studio.sh\nIcon=/opt/android-studio/bin/studio.svg\nStartupNotify=true\nTerminal=false\nType=Application\nCategories=GNOME;GTK;Core;Documentation;Utility;\nMimeType=x-scheme-handler/ghelp;x-scheme-handler/help;x-scheme-handler/info;x-scheme-handler/man;\nX-Ubuntu-Gettext-Domain=yelp" > /usr/share/applications/android-studio.desktop
}



# ===============================================================================================
#		FileZilla    (Zuado)							
# ===============================================================================================
install_FileZilla() {
	wget https://dl4.cdn.filezilla-project.org/client/FileZilla_3.59.0_x86_64-linux-gnu.tar.bz2?h=IwfDKBKt1Pb7paLD0l0PMA&x=1653004637 -O filezilla.tar.bz
	wget https://www.philix.be/multisite/wp-content/uploads/sites/15/2019/03/FileZilla_logo.svg_.png -O filezilla.png
	mv FileZilla3 /opt
	mv filezilla.png /opt/FileZilla3/filezilla.png
	echo -e "[Desktop Entry]\nName=FileZilla3\nComment=FileZilla3\nKeywords=documentation;information;manual;help;\nOnlyShowIn=GNOME;Unity;\nExec=/opt/FileZilla3/bin/filezilla\nIcon=/opt/FileZilla3/filezilla.png\nStartupNotify=true\nTerminal=false\nType=Application\nCategories=GNOME;GTK;Core;Documentation;Utility;\nMimeType=x-scheme-handler/ghelp;x-scheme-handler/help;x-scheme-handler/info;x-scheme-handler/man;\nX-Ubuntu-Gettext-Domain=yelp" > /usr/share/applications/FileZilla3.desktop
}


# ===============================================================================================
#		OBS Studio 							-> https://obsproject.com/download#linux							
# ===============================================================================================
install_obs() {
	add-apt-repository ppa:obsproject/obs-studio
	apt update
	apt install ffmpeg obs-studio
}



###################################
###################################
###################################
###################################
###################################
###################################











######################			conteúdo de um .desktop
[Desktop Entry]
Name=Godot
Comment=IDE Godot
# Translators: Search terms to find this application. Do NOT translate or localize the semicolons! The list MUST also end with a semicolon!
Keywords=documentation;information;manual;help;
OnlyShowIn=GNOME;Unity;
Exec=/opt/godot/Godot
# Translators: Do NOT translate or transliterate this text (this is an icon file name)!
Icon=/opt/godot/godot.jpg
StartupNotify=true
Terminal=false
Type=Application
Categories=GNOME;GTK;Core;Documentation;Utility;
MimeType=x-scheme-handler/ghelp;x-scheme-handler/help;x-scheme-handler/info;x-scheme-handler/man;
X-Ubuntu-Gettext-Domain=yelp
