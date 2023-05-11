cat <<EOT >> /etc/vsftpd.conf
listen=YES
listen_ipv6=NO
anonymous_enable=NO
local_enable=YES
write_enable=YES
local_umask=022
dirmessage_enable=YES
use_localtime=YES
xferlog_enable=YES
connect_from_port_20=YES
chroot_local_user=YES
secure_chroot_dir=/var/run/vsftpd/empty
pam_service_name=vsftpd
ssl_enable=NO
pasv_enable=YES
pasv_min_port=1024
pasv_max_port=1048
local_root=/var/www/html
EOT

mkdir -p /var/www/html

# Create user and group
groupadd -g 1000 abrar_group
useradd -u 1000 -g 1000 abrar_user

# Set permissions and ownership for the WordPress directory
chown -R abrar_user:abrar_group /var/www/html
chmod -R 755 /var/www/html

# Set password for user
echo 'abrar_user:abrar_password' | chpasswd

# Add user to FTP users list
echo "abrar_user" | tee -a /etc/vsftpd/user_list