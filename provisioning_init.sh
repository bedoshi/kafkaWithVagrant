yum -y groupinstall base "Development tools" --setopt=group_package_types=mandatory,default,optional
wget http://ftp.jaist.ac.jp/pub/apache/kafka/2.3.0/kafka_2.12-2.3.0.tgz -P /
home/vagrant
tar -zxf tar -zxf kafka_2.12-2.3.0.tgz
chmod 0755 /home/vagrant/*