#!/bin/bash
# Tested on Ubuntu 14.04

sudo apt-get update
sudo apt-get -y upgrade

sudo add-apt-repository -y ppa:boost-latest/ppa

sudo apt-get -y install     \
git                         \
pkg-config                  \
xorg-dev                    \
libgtk-3-dev                \
libboost-filesystem1.55-dev \
libboost-system1.55-dev     \
libudev-dev                 \
llvm                        \
clang                       \
cmake                       \
ninja-build                 \
libcairo2-dev               \
libusb-1.0-0-dev            \
libssl-dev                  \
libfreetype6-dev            \
libfontconfig1-dev          \
libglu1-mesa-dev            \
libmpg123-dev               \
libopenal-dev               \
libassimp-dev               \
libopencv-dev               \
libtbb-dev                  \
libasound2-dev              \
libsndfile1-dev             \
gstreamer1.0-x              \
gstreamer1.0-alsa           \
gstreamer1.0-libav          \
gstreamer1.0-pulseaudio     \
gstreamer1.0-plugins-base   \
gstreamer1.0-plugins-good   \
gstreamer1.0-plugins-bad    \
gstreamer1.0-plugins-ugly   \
libgstreamer1.0-dev         \
libgstreamer-plugins-base1.0-dev

sudo ln -s /usr/bin/llvm-symbolizer* /usr/bin/llvm-symbolizer 2> /dev/null

# Use gold linker
sudo rm /usr/bin/ld && sudo ln -s /usr/bin/ld.gold /usr/bin/ld

# Use default linker
#sudo rm /usr/bin/ld && sudo ln -s /usr/bin/ld.bfd /usr/bin/ld

# Reinstall Mesa if CMake can't find OpenGL
#sudo apt-get -y install --reinstall libgl1-mesa-glx libgl1-mesa-dev
