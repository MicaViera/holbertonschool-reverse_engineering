#!/bin/bash
. ./messages.sh

mortadelabochaotonellothebestmortadelaever=$(readelf -h $1 2>/dev/null)
if [[ $? -ne 0 ]]; then
	echo "pipo"
	exit 1
fi
file_name=$1
magic_number=$(echo $mortadelabochaotonellothebestmortadelaever | grep -oP 'Magic: \K.*(?= Class)')
class=$(echo $mortadelabochaotonellothebestmortadelaever | grep -oP 'Class: \K.*(?= Data)')
byte_order=$(echo $mortadelabochaotonellothebestmortadelaever | grep -oP ', \K.* endian(?= )')
entry_point_address=$(echo $mortadelabochaotonellothebestmortadelaever | grep -oP 'Entry point address: \K.*(?= Start of program headers)')
display_elf_header_info

