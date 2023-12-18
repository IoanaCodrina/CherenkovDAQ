# CherenkovDAQ
## Requirements:
1. Ubuntu 20.04 or more recent
2. sudo apt-get install build-essential libfontconfig1 mesa-common-dev
3. Install qt5 from git (licence problems nowadays..)
     * git clone git://code.qt.io/qt/qt5.git
     * export LLVM_INSTALL_DIR=/usr/llvm
     * mkdir qt5-build
     * cd qt5-build
     * ../qt5/configure -developer-build -opensource -nomake examples -nomake tests
     * make -j(nproc)
     * sudo make install 
4. Install qt5 libraries (version >= 5.7)
   * sudo apt-get install qt5-default 
   * (wget http://download.qt.io/official_releases/qt/5.7/5.7.0/qt-opensource-linux-x64-5.7.0.run)
   * (chmod +x qt-opensource-linux-x64-5.7.0.run ./qt-opensource-linux-x64-5.7.0.run)

5. Check if vmlinux exists, if problems with vmlinux (Ubuntu >20.4):
   *apt install dwarves
   *cp /sys/kernel/btf/vmlinux /usr/lib/modules/`uname -r`/build/
  
## Installation:
1. Compile and install the CAEN USB Driver
   * cd CAENUSBdrvB-1.5.1
   * make
   * sudo make install
2. Install the CAEN VME C libraries
   * cd CAENVMELib-2.50/lib
   * sudo ./install_x64
3. Compile the CherenkovDAQ software
   * qmake CherenkovDAQ.pro
   * make -j8
   * sudo make install
4. Execute the programme
   * ./bin/CherenkovDAQ #or from a double-click on the desktop icon if a make install was done
5. Make it available for other users (optional)
   * sudo cp ~/Desktop/CherenkovDAQ.desktop otherUser/Desktop/.
   * sudo chown otherUser Desktop/CherenkovDAQ.desktop
  
## Update:
1. git pull
2. qmake CherenkovDAQ.pro
3. make -j8
4. sudo make install

