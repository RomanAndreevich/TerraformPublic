#!/bin/bash

# update & install Apache2
yum -y update
yum -y install httpd

# Get ip address
myip=`curl http://2ip.ru`

# set simple website
cat <<EOF > /var/www/html/index.html
<html>
<body bgcolor="darkred">
<h1><font color="white">Build by Power of Terraform <font color="black">v0.15.3</font></h1><br><p>
<h2><font color="white">Server PrivateIP: <font color="cyan">$myip</h2><br>
<br>
<font color="black">
Highly Availability website with <b><font color="lime">Green</font>/<font color="blue">Blue</font></b> deployment<br>
Code: Terraform<br>
Hosting: AWS<br>
<br>
Structure:<br>
AWS Loadbalancer<br>
2 servers Amazon linux 2 with Apache2<br>
Access ports: 80<br>
<br>
When the page is refreshed, the IP specified on the page changes - it is loadbalancer that switches servers.<br>
When the site code is updated, new servers are created with new site pages.<br>
If the new servers are up, the old ones are killed.<br>
<h1><font color="white">Full Zero Downtime guaranteed.</font></h1><br>
<font color="cyan">
<b>Website version 5.2</b>
</font>
</body>
</html>
EOF

sudo service httpd start
chkconfig httpd on
