#!/bin/bash
    yum update -y
    yum install httpd -y
    service httpd start
    chkconfig httpd on
    cd /var/www/html
    echo "<html><h1>Splunk Search Head</h1></html>" > index.html
    mkfs.ext4 /dev/xvdd
    mkdir /opt/splunk
    mount /dev/xvdd /opt/splunk
    cd /etc
    echo "/dev/xvdd /opt/splunk ext4 defaults,nofail 0" > fstab
    
