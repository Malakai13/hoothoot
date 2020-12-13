getPass() {
	stty -echo
	printf $1 >&2
	read PASSWORD
	stty echo
	printf "\n" >&2
	
	echo $PASSWORD
}

docker run --env-file=.env -p  8084:8084 hoothoot:test

# docker run -e OWLET_USER=$(getPass "User:") -e OWLET_PASS=$(getPass "Password:") -p  8084:8084 hoothoot:test