#! /bin/bash
echo "what package would you like to download?"
read package
if yum list installed |grep "$package"
then
        echo "this package is already installed in your Kernel"
else
        yum install "$package" -y
fi