#!/bin/bash

cd
git clone https://github.com/kubernetes-incubator/kubespray.git
mkdir ~/.kubespray
cp -rfp ~/kubespray/* ~/.kubespray/
sed -i 's/.*cloud_provider:.*/cloud_provider: aws/' ~/.kubespray/inventory/sample/group_vars/all.yml
cp -rfp ~/.kubespray/contrib/aws_inventory ~/.kubespray/inventory
