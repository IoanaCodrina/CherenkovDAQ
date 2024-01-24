# CherenkovDAQ
## Requirements:
1. Ubuntu 20.04 or more recent
2. sudo apt-get install build-essential libfontconfig1 mesa-common-dev qtbase5-dev
3. Check if vmlinux exists, if problems with vmlinux (Ubuntu >20.4):
   *apt install dwarves
   *cp /sys/kernel/btf/vmlinux /usr/lib/modules/`uname -r`/build/
  
## Installation:
1. Compile and install the CAEN USB Driver
   * cd CAENUSBdrvB-1.5.1 or CAENUSBdrvB-1.5.4
   * make
   * sudo make install
2. Install the CAEN VME C libraries
   * cd CAENVMELib-2.50/lib or cd CAENVMELib-v3.4.4/lib
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

