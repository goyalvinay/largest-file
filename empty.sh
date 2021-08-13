#! /bin/bash
a=$(grep -l ".log" *)
echo $a
echo
for line in $(ls -S);do
  echo $line
  echo "Do you want to truncate any file?"
   read c
  if [ "$c" -eq "y" -o "$c" -eq "yes" ]; then
    read filename
    var1=$(truncate -s 0 "$filename".sh)
  fi

done 


  