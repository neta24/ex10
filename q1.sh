
# Question 1 
awk 'END{print NR}' aliceinwonderland.txt 

# Question 2
awk '/Alice/ {print}' aliceinwonderland.txt  | awk 'END{print NR}'

# Question 3
awk '/ Alice /{ print " Alice " }' aliceinwonderland.txt | awk 'END{print NR}'

# Question 4
awk '/Alice/{print}' aliceinwonderland.txt | grep -o "Alice" | awk 'END{print NR}'

# Qusetion 5 - shortest line
cat aliceinwonderland.txt | awk '{print length, $0 |"$1 sort -n" }' | awk '!/1/ {$1=""; print $0}' | head -1

# Question 6 - most frequent words:
cat aliceinwonderland.txt | awk '{print tolower($0)}'| grep -oE '\w{1,}' | awk '{a[$1]++}END{for(k in a)print a[k],k}' | sort -nr | head -n 5

# Question 7 - how many lines has the word alice and a number (trick question because there are no numberssss)
awk '/Alice/' aliceinwonderland.txt | awk '/[0-9]/ {print}' | awk 'END{print NR}'


