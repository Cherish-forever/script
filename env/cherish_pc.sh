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

sudo apt-get update

# quem
#yes | sudo apt-get install qemu qemu-system-x86 qemu-system-arm

yes | sudo apt-get install libusb-dev
yes | sudo apt-get install libusb-1.0-0-dev

yes | sudo apt-get build-depgcc


yes | sudo apt-get install gcc-arm-linux-gnueabi
yes | sudo apt-get install gcc-arm-linux-gnueabihf
yes | sudo apt-get install gcc-arm-none-eabi

yes | sudo apt install libssl-dev pkg-config

echo 'install lib for AC6 STM32'
yes | sudo apt-get install libc6:i386 lib32ncurses5

yes | sudo apt-get install unrar

#echo 'install some libs for android'
#yes | sudo apt-get install git-core gnupg flex bison gperf \
#             zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 \
#             lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache \
#             libgl1-mesa-dev libxml2-utils xsltproc device-tree-compiler

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
yes | sudo apt-get install zlib1g-dev libtbb-dev libglew-dev libudev-dev freeglut3-dev ssh  qt5-qmake libglew-dev freeglut3-dev libboost-all-dev
Y | sudo apt-get install python3-dev python3-pip python3-tk python3-lxml python3-six


# SimplicityStudio_v4
Y | sudo apt-get install libwebkitgtk-1.0-0

#echo 'install opencv'
#yes | sudo apt-get build-dep opencv

cd ~

