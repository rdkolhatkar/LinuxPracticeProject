# Pipe Operators in Linux
# The pipe operator (|) is used to connect the output of one command to the input of another command.
# This allows you to chain commands together and create powerful command combinations.  
# Example 1: Using the pipe operator to filter the output of a command
# The following command lists all the files in the current directory and then filters the output to show only the files that contain the word "report":
ls -l | grep "report"   
# With the helpe of pipe operator (|) we can use the output of one command as the input for another command. In this example, the output of the "ls -l" command is passed to the "grep" command, which filters the output to show only the lines that contain the word "report".
# Example 2: Using the pipe operator to sort the output of a command
# The following command lists all the files in the current directory and then sorts the output by file size:
ls -l | sort -k 5 -n
# In this example, the output of the "ls -l" command is passed to the "sort" command, which sorts the output based on the 5th column (file size) in numerical order.
# Example 3: Using the pipe operator to count the number of lines in the output of a command
# The following command lists all the files in the current directory and then counts the number of lines in the output:
ls -l | wc -l
# In this example, the output of the "ls -l" command is passed to the "wc" command, which counts the number of lines in the output and displays the result.     
ls -lh | sort -k 5 -h
# In this example, the output of the "ls -lh" command is passed to the "sort" command, which sorts the output based on the 5th column (file size) in human-readable format. The "-h" option is used to sort the file sizes in a human-readable format, which means that it will sort the file sizes based on their actual size rather than their string representation.     
cat file.txt | grep "error" | wc -l
# In this example, the output of the "cat file.txt" command is passed to the "grep" command, which filters the output to show only the lines that contain the word "error". The output of the "grep" command is then passed to the "wc" command, which counts the number of lines in the output and displays the result. This command is useful for counting the number of occurrences of the word "error" in the file "file.txt".      
# Using multiple pipe operators allows you to create complex command combinations and perform powerful operations on the output of commands. It is a fundamental concept in Linux and is widely used in shell scripting and command-line operations.    
ls -lh | sort -k 5 -h | head -n 10
# In this example, the output of the "ls -lh" command is passed to the "sort" command, which sorts the output based on the 5th column (file size) in human-readable format. The output of the "sort" command is then passed to the "head -n 10" command, which displays the first 10 lines of the sorted output. This command is useful for displaying the 10 largest files in the current directory.   
ls -lh | sort -k5h | tail -5
# In this example, the output of the "ls -lh" command is passed to the "sort" command, which sorts the output based on the 5th column (file size) in human-readable format. The output of the "sort" command is then passed to the "tail -5" command, which displays the last 5 lines of the sorted output. This command is useful for displaying the 5 smallest files in the current directory.
