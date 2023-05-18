
mkdir -p /var/www/html

# Create user and group
adduser abrar --disabled-password


# Set permissions and ownership for the WordPress directory
echo 'abrar:abrar123' | chpasswd

# Set password for user
chown -R abrar:abrar123 /var/www/html

RUN mkdir -p /var/run/vsftpd/empty

RUN mkdir /Users/abrar

# Add user to FTP users list
echo abrar | tee -a /etc/vsftpd.userlist
