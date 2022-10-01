mount -t tmpfs tmpfs /tmp/
cd /tmp
wget https://download.mikrotik.com/routeros/7.5/chr-7.5.img.zip
unzip chr-7.5.img.zip
dd if=chr-7.5.img of=/dev/vda bs=4M oflag=sync
echo 1 > /proc/sys/kernel/sysrq 
echo b > /proc/sysrq-trigger