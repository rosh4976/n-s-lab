count=0
while IFS= read -r line; do
  ((count++))
done < files.sh
echo "Number of lines: $count"

