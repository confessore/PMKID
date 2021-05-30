#!/bin/bash

sudo wget https://github.com/kvalo/ath10k-firmware/blob/master/QCA6174/hw3.0/4.4.1.c3/firmware-6.bin_WLAN.RM.4.4.1.c3-00059
sudo mv firmware-6.bin_WLAN.RM.4.4.1.c3-00059 firmware-6.bin
sudo chown root:root firmware-6.bin

sudo airmon-ng check kill
sudo modprobe -r ath10k_pci
sudo modprobe -r ath10k_core


#sudo cp /lib/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin /lib/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin.bak
sudo mv firmware-6.bin /lib/firmware/ath10k/QCA6174/hw3.0/firmware-6.bin

sudo modprobe -r ath10k_pci
sudo modprobe -r ath10k_core
sudo modprobe ath10k_core rawmode=1 cryptmode=1
sudo modprobe ath10k_pci
sudo airmon-ng check kill
