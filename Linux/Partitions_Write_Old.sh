#!/bin/bash

# Prompt the user for input
echo -n "Please enter the partitions you want to write (separated by spaces): "

# Read the input partitions
read -r -a partitions_array

# Check if any partitions were provided
if [ ${#partitions_array[@]} -eq 0 ]; then
    echo "No partitions provided. Exiting."
    exit 1
fi

# Construct the command to flash all partitions
partitions_list=""
img_list=""
for ((i = 0; i < ${#partitions_array[@]}; i++)); do
    partition="${partitions_array[i]}"
    modified_partition="${partition}.img"
    if [ $i -eq 0 ]; then
        partitions_list="$partition"
        img_list="$modified_partition"
    else
        partitions_list+=",$partition"
        img_list+=",$modified_partition"
    fi
done

# Construct the final flash command
flash_command="python3 mtk w $partitions_list $img_list"

# Execute the command to flash all partitions
echo "Executing command: $flash_command"
# Uncomment the following line to actually run the command
 eval "$flash_command"






