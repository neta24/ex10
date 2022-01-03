# Qusetion 1 - number of lines that has Serlock | Holmes: 463
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | wc -l

# Question 2 - number of occurrences of Serlock | Holmes: 554
sed -n '/Holmes\|Sherlock/p' sherlockholmes.txt | grep -oE Sherlock\|Holmes | wc -l

# Question 3 - replace Sherlock with NETA :)
sed 's/Sherlock/NETA/' sherlockholmes.txt

# Question 4 - Was removed

# Qustion 5 - delete the lines with names or location 
#make a backup:
cat sherlockholmes.txt >  ssherlockholmes.txt

sed -i -E "/[A-Z][a-z]+ [A-Z][a-z]+/d" ssherlockholmes.txt 

# Question 6
sed -i -E "s/\((.+)\)/\[\1\] /g" sherlockholmes.txt


