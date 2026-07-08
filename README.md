# Mane WiFiDog

This is a battery-optimized voucher bypass system for Ruijie networks, compiled for security.

## How to run on Termux

To ensure the best performance and security, follow these steps to set up and compile the tool on your device.

### 1. Install Dependencies
```bash
pkg update && pkg upgrade
pkg install python clang make python-dev
pip install cython aiohttp pycryptodome
```

### 2. Compile for your device
Since `.so` files are specific to your phone's processor (ARM/ARM64), you need to compile it locally:
```bash
python setup.py build_ext --inplace
```
This will generate a `mane_wifidog.so` file specific to your device.

### 3. Setup 'wifi' command (Shortcut)
To run the tool by just typing `wifi` from anywhere:
```bash
chmod +x wifi
cp wifi /data/data/com.termux/files/usr/bin/
```

### 4. Run the tool
Now you can just type:
```bash
wifi
```

### 4. (Optional) Security
After compilation, you can delete the source files to keep only the protected `.so` file:
```bash
rm mane_wifidog.py mane_wifidog.c setup.py
```

## Features
- Battery Saver Mode (Optimized Ping)
- MAC Address persistence
- Cythonized for code protection
- Termux compatible
