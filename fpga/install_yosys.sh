# guide by:
# https://symbiyosys.readthedocs.io/en/latest/install.html
#

function install_prerequisites()
{
    sudo apt-get install build-essential clang bison flex \
         libreadline-dev gawk tcl-dev libffi-dev git \
         graphviz xdot pkg-config python3 zlib1g-dev
}

function install_yosys()
{
    local temp_dir=$(mktemp -d)
    local YOSYS_GIT_URL="https://github.com/YosysHQ/yosys"
    local YOSYS_API_URL="https://api.github.com/repos/YosysHQ/yosys"

    local yosys_tag=$(curl -s "${YOSYS_API_URL}/releases/latest" | jq -r '.tag_name')

    wget "${YOSYS_GIT_URL}/releases/download/${yosys_tag}/yosys.tar.gz" -P /tmp
    cd $temp_dir && tar xzvf /tmp/yosys.tar.gz
    make -j$(nproc)
    sudo make install
}

function install_sby()
{
    local temp_dir=$(mktemp -d)
    local SBY_GIT_URL="https://github.com/YosysHQ/sby"
    local YOSYS_API_URL="https://api.github.com/repos/YosysHQ/yosys"

    local yosys_tag=$(curl -s "${YOSYS_API_URL}/releases/latest" | jq -r '.tag_name')

    wget "${SBY_GIT_URL}/archive/refs/tags/yosys-${yosys_tag}/yosys-${yosys_tag}.tar.gz" -P /tmp
    cd $temp_dir && tar xzvf /tmp/yosys-${yosys_tag}.tar.gz && cd sby-yosys-${yosys_tag}
    sudo make install
}

function install_boolector()
{
    local temp_dir=$(mktemp -d)
    local BOOLECTOR_GIT_URL="https://github.com/Boolector/boolector"
    local BOOLECTOR_API_URL="https://api.github.com/repos/Boolector/boolector"

    local boolector_tag=$(curl -s "${BOOLECTOR_API_URL}/releases/latest" | jq -r '.tag_name')

    wget "${BOOLECTOR_GIT_URL}/archive/refs/tags/${boolector_tag}.tar.gz" -P /tmp
    cd $temp_dir && tar xzvf /tmp/${boolector_tag}.tar.gz && cd boolector-${boolector_tag}
    ./contrib/setup-btor2tools.sh
    ./contrib/setup-lingeling.sh
    ./configure.sh
    make -C build -j$(nproc)
    sudo cp build/bin/{boolector,btor*} /usr/local/bin/
    sudo cp deps/btor2tools/build/bin/btorsim /usr/local/bin/
}

function install_yices2()
{
    local temp_dir=$(mktemp -d)
    local YICES2_GIT_URL="https://github.com/SRI-CSL/yices2"
    local YICES2_API_URL="https://api.github.com/repos/SRI-CSL/yices2"

    local yices2_tag=$(curl -s "${YICES2_API_URL}/releases/latest" | jq -r '.tag_name')

    wget "${YICES2_GIT_URL}/archive/refs/tags/${yices2_tag}.tar.gz" -P /tmp
    cd $temp_dir && tar xzvf /tmp/${yices2_tag}.tar.gz && cd yices2-${yices2_tag}
    autoconf
    ./configure
    make -j$(nproc)
    sudo make install
}

function install_z3()
{
    local temp_dir=$(mktemp -d)
    local Z3_GIT_URL="https://github.com/Z3Prover/z3"
    local Z3_API_URL="https://api.github.com/repos/Z3Prover/z3"

    local z3_tag=$(curl -s "${Z3_API_URL}/releases/latest" | jq -r '.tag_name')

    wget "${Z3_GIT_URL}/archive/refs/tags/${z3_tag}.tar.gz" -P /tmp
    cd $temp_dir && tar xzvf /tmp/${z3_tag}.tar.gz && cd z3-${z3_tag}
    python scripts/mk_make.py
    cd build && make -j$(nproc) && sudo make install
}

function install_super_prov()
{
    echo "test no pass! need python2"

    local temp_dir=$(mktemp -d)
    local SUPER_PROV_GIT_URL="https://github.com/sterin/super-prove-build"
    local SUPER_PROV_API_URL="https://api.github.com/repos/sterin/super-prove-build"

    local super_prov_tag=$(curl -s "${SUPER_PROV_API_URL}/releases/latest" | jq -r '.tag_name')

    cd $temp_dir && git clone $SUPER_PROV_GIT_URL && cd super-prove-build
    git checkout $super_prov_tag && git submodule update --init --recursive

    mkdir build && cd build
    cmake -DCMAKE_BUILD_TYPE=Release ..
    make -j$(nproc) && sudo make install
}

install_prerequisites
install_yosys
install_sby
install_boolector
install_yices2
#install_z3
#install_super_prov
