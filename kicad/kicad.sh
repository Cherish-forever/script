#!/bin/bash

#echo "Install kicad 5.1"
#sudo add-apt-repository --yes ppa:js-reynaud/kicad-5.1
#sudo apt-get update
#sudo apt -y install --install-suggests kicad
#sudo apt -y install kicad-locale-zh
#
#echo "Download kicad library"
#mkdir ~/kicad_lib
#git clone https://github.com/KiCad/kicad-symbols.git ~/kicad_lib/kicad-symbols
#git clone https://github.com/KiCad/kicad-footprints.git ~/kicad_lib/kicad-footprints
#git clone https://github.com/KiCad/kicad-packages3D.git ~/kicad_lib/kicad-packages3D
#git clone https://github.com/KiCad/kicad-templates.git ~/kicad_lib/kicad-templates
#
mkdir -p ~/.kicad_plugins

echo "Download kicad stepup tools"
echo "KiCad StepUp is a FreeCAD Workbench aimed at helping both KiCad and FreeCAD users in collaborating with electrical (ECAD) and mechanical (MCAD) design."
echo "download: git clone https://github.com/easyw/kicadStepUpMod.git ~/.kicad_plugins/kicadStepUpMod"
echo "Please read https://github.com/FreeCAD/FreeCAD-addons add kicadStepUpMod to freecad"
echo "or copy ~/kicad_lib/plugins/kicadStepUpMod to freecad Mod sub-directory"
echo "This tools is for freecad not kicad, and I did not use it up"

echo "Download Interactive Html Bom"
git clone https://github.com/openscopeproject/InteractiveHtmlBom.git ~/.kicad_plugins/InteractiveHtmlBom
cd ~/.kicad_plugins/InteractiveHtmlBom && git checkout v2.3 && cd -

echo "Download kicad RF tools plugin"
git clone https://github.com/easyw/RF-tools-KiCAD.git ~/.kicad_plugins/RF-tools-KiCAD

echo "Download kicad ground via"
git clone https://github.com/jsreynaud/kicad-action-scripts.git ~/.kicad_plugins/kicad-action-scripts
echo "Please restart kicad then ground via can be use"

echo "Download kicad symbol generator"
git clone https://github.com/glfw/glfw.git /tmp/glfw
cd /tmp/glfw && git checkout 3.3.4 && mkdir -p build && cd build && cmake .. && make -j7 && sudo make install && cd -
git clone https://github.com/pixellon/imgui.git ~/.kicad_plugins/imgui
cd ~/.kicad_plugins/imgui/kisymgen/kisymgen_src && make -j8 && sudo cp kisymgen /usr/local/bin/ && cd -
echo "imgui help:"
echo "$ kisymgen"

echo "Download kicad teardrop shape"
git clone https://github.com/NilujePerchut/kicad_scripts.git ~/.kicad_plugins/teardrop

echo "Download kicad spiral coil tools"
git clone https://github.com/in3otd/spiki.git ~/.kicad_plugins/spiki
echo "spiki help:"
echo "run python spiki.py it need pyqt4"

echo "Download altium2kicad"
git clone https://github.com/thesourcerer8/altium2kicad.git ~/.kicad_plugins/altium2kicad
echo "altium2kicad help"
echo "online converter: http://www2.futureware.at/KiCad/"
echo "or cd ~/.kicad_plugins/altium2kicad && sudo make install"

echo "Download kicad schematics diff"
sudo apt -y install libgtk-3-dev libcairo2-dev libgit2-dev transfig imagemagick make
sudo apt -y install build-essential
git clone https://gitlab.com/neo900/eeshow.git ~/.kicad_plugins/eeshow
cd ~/.kicad_plugins/eeshow && make -j4 && sudo make install && cd -
echo "eeshow help:"
echo "$ eeplot -o neo900.pdf neo900.pro"
echo "$ eediff -o diff.png -s 2 6a9f71:neo900.pro neo900_SS_5.sch neo900.pro neo900_SS_5.sch"

echo "Download kicad kicost"
sudo apt -y install python3-pip
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
pip3 install kicost
echo "kicost help:"
echo "Please read: https://xess.com/KiCost/docs/_build/singlehtml/index.html"

echo "Download kicad round tracks"
git clone https://github.com/stimulu/kicad-round-tracks.git ~/.kicad_plugins/kicad-round-tracks

echo "Download kicad panelize"
git clone https://github.com/msvisser/panelize-plugin.git ~/.kicad_plugins/panelize-plugin

echo "Download kicad kikit"
pip3 install kikit

echo "Download eagle-to-kicad"
git clone https://github.com/lachlanA/eagle-to-kicad.git ~/.kicad_plugins/eagle-to-kicad

echi "Download kicad-footprint-generator"
git clone https://gitlab.com/kicad/libraries/kicad-footprint-generator.git ~/.kicad_plugins/kicad-footprint-generator
