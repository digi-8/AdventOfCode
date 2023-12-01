input="./input.txt"

array=()

while read line; do
  num=$(echo "$line" | grep -o -E '[0-9]+')
  array+=( $(echo ${num:0:1}${num: -1}) )
done <$input

sum=0

for i in ${array[@]}
do
  sum=$(expr $sum + $i)
done

echo $sum