#! /bin/bash
# username.sh
# Shree Murthy
echo "Enter a username that starts with a lowercase letter and can only have lowercase letters, digits and underscores. Also the username has to be between 3-12 characters!"
echo " "
echo "Enter a Username : "
read -r NAME
while echo "$NAME" | grep -E -v "^[a-z][0-9a-z_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username - Must start with a lowercase letter, and can only have lowercase letters, underscores and digits! Also it can only be between 3-12 characters. Try again!"
	echo "Enter a Username : "
	read -r NAME
done
echo "Thank you"
