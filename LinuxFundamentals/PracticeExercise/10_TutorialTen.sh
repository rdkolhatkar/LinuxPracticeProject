# head, tail and less commands
# head - display the first 10 lines of a file
# tail - display the last 10 lines of a file
# less - view the contents of a file one page at a time
# Create a sample file
echo "This is line 1" > sample.txt
echo "This is line 2" >> sample.txt
echo "This is line 3" >> sample.txt
echo "This is line 4" >> sample.txt
echo "This is line 5" >> sample.txt
echo "This is line 6" >> sample.txt
echo "This is line 7" >> sample.txt         
echo "This is line 8" >> sample.txt
echo "This is line 9" >> sample.txt
echo "This is line 10" >> sample.txt
echo "This is line 11" >> sample.txt
echo "This is line 12" >> sample.txt
echo "This is line 13" >> sample.txt
echo "This is line 14" >> sample.txt
echo "This is line 15" >> sample.txt    
# Use head to display the first 10 lines of the file
echo "Using head command:"
head sample.txt
# Use tail to display the last 10 lines of the file
echo "Using tail command:"
tail sample.txt
# Use less to view the contents of the file one page at a time
echo "Using less command:"
less sample.txt
# Use head and tail with the -n option to specify the number of lines to display
echo "Using head with -n option to display the first 5 lines:"  
head -n 5 sample.txt    
echo "Using tail with -n option to display the last 5 lines:"
tail -n 5 sample.txt
# Use head and tail with the -f option to follow the file as it grows, -f option is used to keep the command running and display new lines as they are added to the file 
echo "Using tail with -f option to follow the file as it grows:"
tail -f sample.txt &
# Append new lines to the file to see the tail command in action
echo "This is line 16" >> sample.txt
echo "This is line 17" >> sample.txt
echo "This is line 18" >> sample.txt
echo "This is line 19" >> sample.txt
echo "This is line 20" >> sample.txt
# Stop the tail command
kill $! 
# Clean up the sample file
rm sample.txt   