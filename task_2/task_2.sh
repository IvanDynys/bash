#!/bin/bash

echo -e "\nInformation about OS:\n\n`cat /etc/*-release`" | tee -a "inf_about_OS"

echo -e "\nNetwork interfaces:\n\n`ip a`" | tee -a "inf_about_OS"

echo -e "\nKernel version:\n`uname -r`" | tee -a "inf_about_OS"

echo -e "\nComputer arhitecture:\n$(arch)" | tee -a "inf_about_OS"

echo -e "\nInformation about firewall:\n\n`sudo ufw status verbose`" | tee -a "inf_about_OS"

