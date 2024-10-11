encrypted_file="$1"
gpg -d "$encrypted_file" > "$2"
