echo -e "\e[33mCopy MongoDB Repo file\e[0m"
cp mongo.repo /etc/yum.repos.d/mongo.repo

echo -e "\e[33mInstalling MongoDB Server\e[0m"
dnf install mongodb-org -y


echo -e "\e[33mStart MongoDB Server\e[0m"
# Modify the config file
systemctl enable mongod
systemctl restart mongod