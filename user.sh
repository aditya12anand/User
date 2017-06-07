#!/bin/bash

clear

echo "Welcome to the Add and Delete User program: "
echo "1. Add New user               2. Delete a current user"
echo " "
read choice
echo ""
echo ""
case $choice in
 1) 
  echo "So lets add a new user: "
  read -p  "Please enter the name of the user: " user_name
  useradd $username -m -s /bin/bash -g users
  echo ""
  echo "Now lets assign the $user_name account a password: "
  echo ""
  passwd $user_name
  echo "" 
  echo "Congrats you have created a new user by the name $user_name"
  ;;
 2) 
  echo "So lets delete the user "
  read -p "Please enter the name of the user: " user_name
  userdel -r $user_name
  echo "Congrats you have deleted the user account $user_name"
  ;;
 *)
  echo "Are you sure you entered the right number."
  echo "We will redirect you to the Main menu."
  sleep 3
  clear
  echo "Redirecting to the main menu."
  sleep 1
  clear
  echo "Redirecting to the main menu.."
  sleep 1
  clear
  echo "Redirecting to the main menu..."
  sleep 1
  clear
  ;;
esac
