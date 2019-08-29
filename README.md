# ![logo](https://community.trinitycore.org/public/style_images/1_trinitycore.png) TwilightCore



## Requirements Windows

* [Visual Studio](https://www.visualstudio.com/downloads/)
* [MySQL, OpenSSL 64bit (Development Libraries)](https://drive.google.com/drive/folders/1VERUCB8pXlKs1pgyB2KGShwb1Sl8x3XT)
* [CMake](https://cmake.org/download/)
* [Data Folder](https://drive.google.com/drive/folders/1Q_q3ZUpHxRgEm8GwyJiZ5gRvYonoLWUI)

## Requirements Ubuntu 18.04

```
sudo add-apt-repository universe
sudo apt update
sudo apt-get install git clang cmake make gcc g++ libmysqlclient-dev libbz2-dev libreadline-dev libncurses-dev libboost-all-dev mysql-server p7zip libace-dev
```


[OpenSSL 1.0.2d](https://ftp.openssl.org/source/old/1.0.2/) :

```
sudo apt install build-essential checkinstall zlib1g-dev -y

./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib

make
make test
sudo make install
```

Also make sure to set OPENSSL_ROOT_DIR to the location you extracted and build OpenSSL

```
export OPENSSL_ROOT_DIR=/home/user/dev/OpenSSL
```

cd to the TrinityCore directory and then:

```
mkdir build
cd build
cmake ..
make authserver
make worldserver
```



## Introduction

TrinityCore is a *MMORPG* Framework based mostly in C++.

It is derived from *MaNGOS*, the *Massive Network Game Object Server*, and is
based on the code of that project with extensive changes over time to optimize,
improve and cleanup the codebase at the same time as improving the in-game
mechanics and functionality.

## Links

* [Website](https://www.twilight-highlands.com)
* [Forums](https://forums.twilight-highlands.com)
