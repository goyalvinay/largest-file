#! /bin/bash
a=$(grep -l ".sh" *)
echo $a
echo
for line in $(du -hsx * | sort -rh | head -10);do
  echo $line
done 
echo "Do you want to truncate any file?"
read $c
if [ "$c" -eq "y" -o "$c" -eq "yes" ]; then
    read $filename
    truncate -s 0 $filename
fi
  