#!/data/data/com.termux/files/usr/bin/bash

echo "[*] Installing dependencies..."
pkg update && pkg upgrade -y
pkg install git python clang make -y
pip install cython aiohttp pycryptodome

echo "[*] Downloading core components..."
# We download the source temporarily to compile it
git clone https://github.com/paingzin3521-ux/wifi.git $HOME/temp_wifi
cd $HOME/temp_wifi

echo "[*] Compiling security module (Creating .so file)..."
python setup.py build_ext --inplace

echo "[*] Finalizing installation..."
mkdir -p $HOME/wifi
cp mane_wifidog.so run_mane.py wifi $HOME/wifi/

# Setup the system command
ln -sf $HOME/wifi/wifi $PREFIX/bin/wifi
chmod +x $PREFIX/bin/wifi
chmod +x $HOME/wifi/wifi

echo "[*] Cleaning up source files for security..."
rm -rf $HOME/temp_wifi

echo "[✔] Installation Complete!"
echo "[*] You can now run the tool by typing: wifi"
wifi
