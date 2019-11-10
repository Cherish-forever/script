echo '<!--'
echo '                       ::'
echo '                      :;J7, :,                        ::;7:'
echo '                      ,ivYi, ,                       ;LLLFS:'
echo '                      :iv7Yi                       :7ri;j5PL'
echo '                     ,:ivYLvr                    ,ivrrirrY2X,'
echo '                     :;r@Wwz.7r:                :ivu@kexianli.'
echo '                    :iL7::,:::iiirii:ii;::::,,irvF7rvvLujL7ur'
echo '                   ri::,:,::i:iiiiiii:i:irrv177JX7rYXqZEkvv17'
echo '                ;i:, , ::::iirrririi:i:::iiir2XXvii;L8OGJr71i'
echo '              :,, ,,:   ,::ir@mingyi.irii:i:::j1jri7ZBOS7ivv,'
echo '                 ,::,    ::rv77iiiriii:iii:i::,rvLq@huhao.Li'
echo '             ,,      ,, ,:ir7ir::,:::i;ir:::i:i::rSGGYri712:'
echo '           :::  ,v7r:: ::rrv77:, ,, ,:i7rrii:::::, ir7ri7Lri'
echo '          ,     2OBBOi,iiir;r::        ,irriiii::,, ,iv7Luur:'
echo '        ,,     i78MBBi,:,:::,:,  :7FSL: ,iriii:::i::,,:rLqXv::'
echo '        :      iuMMP: :,:::,:ii;2GY7OBB0viiii:i:iii:i:::iJqL;::'
echo '       ,     ::::i   ,,,,, ::LuBBu BBBBBErii:i:i:i:i:i:i:r77ii'
echo '      ,       :       , ,,:::rruBZ1MBBqi, :,,,:::,::::::iiriri:'
echo '     ,               ,,,,::::i:  @arqiao.       ,:,, ,:::ii;i7:'
echo '    :,       rjujLYLi   ,,:::::,:::::::::,,   ,:i,:,,,,,::i:iii'
echo '    ::      BBBBBBBBB0,    ,,::: , ,:::::: ,      ,,,, ,,:::::::'
echo '    i,  ,  ,8BMMBBBBBBi     ,,:,,     ,,, , ,   , , , :,::ii::i::'
echo '    :      iZMOMOMBBM2::::::::::,,,,     ,,,,,,:,,,::::i:irr:i:::,'
echo '    i   ,,:;u0MBMOG1L:::i::::::  ,,,::,   ,,, ::::::i:i:iirii:i:i:'
echo '    :    ,iuUuuXUkFu7i:iii:i:::, :,:,: ::::::::i:i:::::iirr7iiri::'
echo '    :     :rk@Yizero.i:::::, ,:ii:::::::i:::::i::,::::iirrriiiri::,'
echo '     :      5BMBBBBBBSr:,::rv2kuii:::iii::,:i:,, , ,,:,:i@petermu.,'
echo '          , :r50EZ8MBBBBGOBBBZP7::::i::,:::::,: :,:,::i;rrririiii::'
echo '              :jujYY7LS0ujJL7r::,::i::,::::::::::::::iirirrrrrrr:ii:'
echo '           ,:  :@kevensun.:,:,,,::::i:i:::::,,::::::iir;ii;7v77;ii;i,'
echo '           ,,,     ,,:,::::::i:iiiii:i::::,, ::::iiiir@xingjief.r;7:i,'
echo '        , , ,,,:,,::::::::iiiiiiiiii:,:,:::::::::iiir;ri7vL77rrirri::'
echo '         :,, , ::::::::i:::i:::i:i::,,,,,:,::i:i:::iir;@Secbone.ii:::'
echo '	'
echo '-->'

sudo add-apt-repository --yes ppa:js-reynaud/kicad-5.1
sudo apt-get update

# git
yes | sudo apt-get install git
git config --global user.name "Cherish"
git config --global user.email "851153978@qq.com"

#echo '[url "ssh://Cherish@turtles.ninjia.cmcm.com:29418"]
#	insteadOf = http://turtles.ninjia.cmcm.com/gerrit' >> ~/.gitconfig
#echo '[review "turtles.ninjia.cmcm.com/gerrit"]
#	username = Cherish' >> ~/.gitconfig
#echo '[review "turtles.ninjia.cmcm.com/gerrit"]
#	username = Cherish' >> ~/.gitconfig

echo '[alias]
	br = branch
	co = checkout
	st = status
	ci = commit' >> ~/.gitconfig

echo '[color]
	ui = auto' >> ~/.gitconfig

yes | sudo apt-get install vim emacs

# quem
#yes | sudo apt-get install qemu qemu-system-x86 qemu-system-arm

yes | sudo apt-get install libusb-dev
yes | sudo apt-get install libusb-1.0-0-dev
yes | sudo apt-get install zip

yes | sudo apt-get build-depgcc
yes | sudo apt-get install build-essential 

yes | sudo apt-get install gcc-arm-linux-gnueabi
yes | sudo apt-get install gcc-arm-linux-gnueabihf
yes | sudo apt-get install gcc-arm-none-eabi

yes | sudo apt-get install cmake autoconf automakex

cd temp/
if [ -f temp/google-chrome-stable_current_amd64.deb ];
then
    echo 'google-chrome-stable_current_amd64.deb has been download'
else
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome*
    yes | sudo apt-get -f install 
fi

echo 'install lib for AC6 STM32'
yes | sudo apt-get install libc6:i386 lib32ncurses5

yes | sudo apt-get install unrar

#echo 'install some libs for android'
#yes | sudo apt-get install git-core gnupg flex bison gperf build-essential \
#             zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
#             lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
#             libgl1-mesa-dev libxml2-utils xsltproc unzip device-tree-compiler

#echo 'install openjdk-7'
#yes | sudo apt-get install openjdk-7-jre openjdk-7-jdk

#echo 'config java'
#yes | sudo update-alternatives --config java
#yes | sudo update-alternatives --config javac

#echo 'install java 8'
#yes | sudo apt-add-repository ppa:webupd8team/java
#yes | sudo apt-get update
#yes | sudo apt-get install oracle-java8-installer

echo 'install....'
yes | sudo apt-get install ant zlib1g-dev libtbb-dev libglew-dev libudev-dev freeglut3-dev ssh automake autoconf qt5-qmake libglew-dev freeglut3-dev libboost-all-dev
Y | sudo apt-get install python3-dev python3-pip python3-tk python3-lxml python3-six
Y | sudo apt-get install llvm build-essential

sudo pip install shadowsocks you-get

# tools
yes | sudo apt-get install tree meld spyder ack-grep silversearcher-ag htop fd-find unity-tweak-tool
alias top="sudo htop"

# ctrl + R
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
source ~/.zshrc

# kicad
Y | sudo apt install --install-suggests kicad
mkdir ~/kicad_lib
git clone https://github.com/KiCad/kicad-symbols.git ~/kicad_lib/kicad-symbols
git clone https://github.com/KiCad/kicad-footprints.git ~/kicad_lib/kicad-footprints
git clone https://github.com/KiCad/kicad-packages3D.git ~/kicad_lib/kicad-packages3D
git clone https://github.com/KiCad/kicad-templates.git ~/kicad_lib/kicad-templates

#echo 'install opencv'
#yes | sudo apt-get build-dep opencv

#echo '/****************************************************************/'
#echo '/*         Hello Sir if you want connect to our server          */'
#echo '/*         please add blew message to /etc/hosts                */'
#echo '172.18.193.21 turtles.ninjia.cmcm.com'
#echo '10.60.82.30 gerrit.kisops.com'
#echo '/****************************************************************/'
#
#echo '/*                        System Init Done                      */'
#
cd ..

