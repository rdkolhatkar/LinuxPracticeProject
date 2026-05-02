# Arithmetic Operations and Expressions in Bash (Linux)
# ============================================
# In this tutorial, we will explore how to perform arithmetic operations and use expressions in Bash.
# We will cover basic arithmetic operations, using variables in expressions, and some useful arithmetic operators.
# ============================================  
# Basic Arithmetic Operations
# --------------------------------------------
# In Bash, you can perform basic arithmetic operations using the following syntax:
# $(( expression ))
# The expression can include numbers, variables, and arithmetic operators. Here are some examples:
echo $(( 5 + 3 )) # This will output 8, as it adds 5 and 3.
echo $(( 10 - 4 )) # This will output 6, as it subtracts 4 from 10.
echo $(( 7 * 2 )) # This will output 14, as it multiplies 7 by 2.       
echo $(( 20 / 5 )) # This will output 4, as it divides 20 by 5.
echo $(( 10 % 3 )) # This will output 1, as it calculates the remainder of 10 divided by 3.       
# Using Variables in Expressions
# --------------------------------------------
# You can also use variables in your arithmetic expressions. Here’s how you can do that:
a=10
b=5
echo $(( a + b )) # This will output 15, as it adds the values  of variables a and b.
echo $(( a - b )) # This will output 5, as it subtracts the value of variable b from a.
echo $(( a * b )) # This will output 50             
echo $(( a / b )) # This will output 2, as it divides the value of variable a by b.
echo $(( a % b )) # This will output 0, as it calculates the remainder of a divided by b.       
# Useful Arithmetic Operators
# --------------------------------------------
# In addition to the basic arithmetic operators, Bash also supports some useful operators for incrementing and decrementing values:
c=10            
(( c++ )) # This will increment the value of c by 1. After this operation, c will be 11.
echo $c # This will output 11, as c has been incremented.
(( c-- )) # This will decrement the value of c by 1. After this operation, c will be back to 10.
echo $c # This will output 10, as c has been decremented back to its original value.
(( c += 5 )) # This will add 5 to the value of c. After this operation, c will be 15.
echo $c # This will output 15, as c has been increased by 5.
(( c -= 3 )) # This will subtract 3 from the value of c. After this operation, c will be 12.
echo $c # This will output 12, as c has been decreased by 3.
(( c *= 2 )) # This will multiply the value of c by 2. After this operation, c will be 24.
echo $c # This will output 24, as c has been multiplied by 2.
(( c /= 4 )) # This will divide the value of c by 4. After this operation, c will be 6.         
echo $c # This will output 6, as c has been divided by 4.
(( c %= 5 )) # This will calculate the remainder of c divided by 5. After this operation, c will be 1.
echo $c # This will output 1, as c has been updated to the remainder of 6 divided by 5.
# Note: When using arithmetic operations in Bash, ensure that you are using the correct syntax and that your variables contain valid numeric values to avoid errors. Additionally, remember that Bash only supports integer arithmetic, so if you need to perform floating-point calculations, you may want to use a tool like bc or awk for more advanced mathematical operations.         
echo "The result of the expression is: $(( (a + b) * c ))" # This will output the result of the expression (a + b) * c, which is (10 + 5) * 1 = 15.     
echo $((2**3)) # This will output 8, as it calculates 2 raised to the power of 3 (2^3).
echo $((10 / 3)) # This will output 3, as it performs integer division and discards the decimal part. If you want to get a floating-point result, you can use the bc command:
echo "scale=2; 10 / 3" | bc # This will output 3.33, as it calculates 10 divided by 3 with a scale of 2 decimal places using the bc command.        
echo $((2**(3 + 2))) # This will output 32, as it calculates 2 raised to the power of (3 + 2), which is 2^5 = 32.   
echo $((2**(3-2))) # This will output 2, as it calculates 2 raised to the power of (3 - 2), which is 2^1 = 2.
echo $(( (2 + 3) * (4 - 1) )) # This will output 15, as it calculates the expression (2 + 3) * (4 - 1), which is 5 * 3 = 15.    
echo $(( (a + b) * (c - 2) )) # This will output 0, as it calculates the expression (a + b) * (c - 2), which is (10 + 5) * (1 - 2) = 15 * (-1) = -15.    
echo $(( (a + b) / (c + 1) )) # This will output 7, as it calculates the expression (a + b) / (c + 1), which is (10 + 5) / (1 + 1) = 15 / 2 = 7 (integer division). If you want a floating-point result, you can use bc:
echo "scale=2; (a + b) / (c + 1)" | bc # This will output 7.50, as it calculates the expression (a + b) / (c + 1) with a scale of 2 decimal places using the bc command.            
echo $(ls) # This will execute the ls command and output the list of files and directories in the current directory. The $(...) syntax allows you to capture the output of a command and use it in another command or expression. In this case, it will display the contents of the current directory.
echo "The current date and time is: $(date)" # This will output the current date and time by executing the date command within the echo statement. The $(date) syntax captures the output of the date command and includes it in the string that is printed to the terminal. The output will show the current date and time in the default format used by the date command. 
$(ls) # This will execute the ls command, but since it is not being captured or used in an expression, it will simply run and display the list of files and directories in the current directory as a side effect. The output will be the same as running ls directly in the terminal, showing the contents of the current directory.   
$(ls; ls -l) # This will execute both the ls and ls -l commands sequentially. The first ls command will list the files and directories in the current directory, and then the ls -l command will provide a detailed listing of the same contents. The output will show the contents of the current directory twice: first in a simple format and then in a long format with detailed information about each item.   
$(cd Downloads/ && ls) # This will change the current directory to Downloads/ and then execute the ls command to list the contents of that directory. The output will show the files and directories that are present in the Downloads/ directory. Note that this command will not change your current working directory in the terminal, as it is executed in a subshell. After running this command, you will still be in your original directory, and you can verify this by running the pwd command again, which should show your original directory as the current working directory.   
# In above command "$(cd Downloads/ && ls)" logical operator "&&" is used to ensure that the ls command is only executed if the cd command is successful. If the cd command fails (e.g., if the Downloads/ directory does not exist), then the ls command will not be executed, and you will see an error message indicating that the directory could not be found. 
$(cd Downloads/ || ls) # This command uses the logical OR operator "||" to execute the ls command only if the cd command fails. If the cd command is successful, it will change the directory to Downloads/ and list its contents. However, if the cd command fails (e.g., if the Downloads/ directory does not exist), then the ls command will be executed instead, listing the contents of the current directory. The output will depend on whether the cd command succeeds or fails. If it succeeds, you will see the contents of the Downloads/ directory; if it fails, you will see the contents of your current directory.
# Sub shells and Command Substitution
# --------------------------------------------
# When you use the $(...) syntax, it creates a subshell to execute the command inside the parentheses. This means that any changes to the environment (like changing directories) will not affect the parent shell. For example:
$(cd /tmp && ls) # This will change the directory to /tmp and list its contents, but after this command executes, you will still be in your original directory. The output will show the contents of the /tmp directory, but your current working directory will remain unchanged. You can verify this by running the pwd command after executing the above command, which will show your original directory as the current working directory.  
# Note: If you want to change the current working directory in your shell, you should use the cd command directly without wrapping it in a subshell. For example:
cd /tmp # This will change your current working directory to /tmp. After running this command, you will be in the /tmp directory, and you can verify this by running the pwd command again, which should now show /tmp as your current working directory.   