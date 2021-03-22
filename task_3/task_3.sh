#!/bin/bash
echo | tee -a  "inf_about_sys.txt"
echo -e "Uptime system: `uptime`" | tee -a "inf_about_sys.txt"
echo | tee -a "inf_about_sys.txt"
echo -e "Current users:\n$(who)" | tee -a "inf_about_sys.txt"
echo | tee -a "inf_about_sys.txt"
echo -e "15 resent logins :\n\n$(last -n 15)" | tee -a "inf_about_sys.txt"

echo -e "\nTOP-10 processes by RAM usage:\n`ps -Ao user,uid,comm,pid,pcpu,pmem --sort=-pmem | head -n 11`" | tee -a "inf_about_sys.txt"

echo -e "\nTOP-10 processes by CPU usage:\n`ps -Ao user,uid,comm,pid,pcpu,pmem --sort=-pcpu | head -n 11`" | tee -a "inf_about_sys.txt"
echo | tee -a "inf_about_sys.txt"
echo -e  "\nOpen TCP/UDP ports: `ss -tlpn`" | tee -a "inf_about_sys.txt"
echo | tee -a "inf_about_sys.txt"
echo -e  "\nVirtual Memory usage :\n\n`free -t`" | tee -a "inf_about_sys.txt"
echo | tee -a "inf_about_sys.txt"
echo -e "\nUsage of disk space :\n\n`df -h`" | tee -a  "inf_about_sys.txt" 

