#!/bin/bash

#Input username and group
USERNAME=$1
GROUP=$2

#Check if username and group are provided
if [ -z "$USERNAME" ] || [ -z "$GROUP" ]
then
        echo "Usage: $0 <username> <group>"     #0 means to show the file itself, this is made to show the format its suppose to be done in
        exit 1
fi


#Creation of user & force password set first time
sudo adduser  --gecos "" --disabled-password $USERNAME
echo "$USERNAME:$DEFAULT_PASSWORD" | sudo chpasswd
echo " "
#adding the user to the specified group
sudo usermod -aG $GROUP $USERNAME


#Set Password expiration and policy
sudo passwd --expire $USERNAME
sudo chage -M 90 $USERNAME #M stands for maximum age meaning that the usr only has 90 days until new password needs to be set
sudo chage -W 7 $USERNAME  #after 90 days they are given 7 days before the password completely expires (Unable to login, requires me admin powee
sudo chage -m 7 $USERNAME  #Cant change password again before 7 days of changing it already





#Creation of folder for users
sudo /usr/local/bin/create_user_folder.sh $USERNAME

echo " "
echo "User $USERNAME created with default password '$DEFAULT_PASSWORD' and assigned to $GROUP group."
echo " "
echo "User $USERNAME created and assigned to $GROUP group :)"













#!/usr/bin/env bash

USERNAME=$1

if [ -z "$USERNAME" ]
then
        echo "Usage: $0 <username>"
        exit 1
fi


#Ensure the user exists
if id "$USERNAME" &>/dev/null
then
        echo "Setting up folder for $USERNAME."
        echo " "
else
        echo "User $USERNAME does not exist."
        echo " "
        exit 1
fi


USER_FOLDER="/home/$USERNAME/$USERNAME-files"

#Creation of the folder if it doesnt exist
if [ ! -d "$USER_FOLDER" ]
then
        sudo mkdir -p $USER_FOLDER
        sudo chown $USERNAME:restricted_users $USER_FOLDER
        sudo chmod 700 $USER_FOLDER
        echo "Folder created for $USERNAME at $USER_FOLDER."
fi







