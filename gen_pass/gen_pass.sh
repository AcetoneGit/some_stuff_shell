# use dev / urandom for obtain randomization

CHARSET="[:alnum:]"
PASS_LENGTH=20

generate_password() {
	PASS=$(head /dev/urandom | tr -dc "$CHARSET" | head -c "$PASS_LENGTH")
	echo "$PASS"
}

for i in {1..20}
do
	pass=$(generate_password)
	echo "Password $i : $pass"
done
