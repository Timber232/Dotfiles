#!/usr/bin/env bash
# encrypt_folder -u "<uid>" -p "<output_path>"

filepath="$1"
recipient="$2"

for d in $filepath/*/; do
    # Delete encrypted files if exists
    if test -e "./$filepath/$(basename $d).tar.gz.gpg"; then
        rm "./$filepath/$(basename $d).tar.gz.gpg"
    fi

    # Tar and encrypt (remove the original tar afterwards)
    tar -czvf "./$filepath/$(basename $d).tar.gz" $d && gpg -r $recipient --encrypt "./$filepath/$(basename $d).tar.gz" && rm "./$filepath/$(basename $d).tar.gz"	
done