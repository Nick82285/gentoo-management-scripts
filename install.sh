#!/usr/bin/env bash

set -e

files=("ekernel" "mkkernel" "systemupdate")

source ./gentoo-management-scripts/utils/suidrequired

mkdir -p /usr/local/libexec/
cp -r ./gentoo-management-scripts /usr/local/libexec/

for file in "${files[@]}"; do
	cp "$file" /usr/local/bin/
	chmod 0755 "/usr/local/bin/$file"
	chown root:root "/usr/local/bin/$file"
done
