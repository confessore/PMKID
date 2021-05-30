#!/bin/bash

sudo modprobe -r ath10k_pci
sudo modprobe -r ath10k_core
sudo modprobe ath10k_core rawmode=0 cryptmode=0
sudo modprobe ath10k_pci
