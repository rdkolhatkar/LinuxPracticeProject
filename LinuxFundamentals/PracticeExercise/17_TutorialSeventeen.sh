# Mastering Find Command in Linux
# Basic syntax of 'find' command is : find [path] [options] [expression]    
# Find all .txt files in the current directory and its subdirectories
find . -type f -name "*.txt"
# Find all .log files in /var/log directory
find /var/log -type f -name "*.log"
# Find all .sh files in the current directory
find . -type f -name "*.sh"
# Find all .java files in the current directory and subdirectories
find . -type f -name "*.java"
# Find all files starting with "test"
find . -type f -name "test*"
# Find all files ending with a digit
find . -type f -name "*[0-9]"
# Find files with exactly 3 characters before .txt
find . -type f -name "???.txt"
# Find files beginning with uppercase letter
find . -type f -name "[A-Z]*"
# Find files beginning with lowercase letter
find . -type f -name "[a-z]*" 
# ==============================================================================

# LINUX WILDCARDS (GLOB PATTERNS)

# Used extensively with:

# - find

# - ls

# - cp

# - mv

# - rm

# - shell scripting

#

# IMPORTANT:

# Wildcards are expanded by the shell BEFORE the command executes.

# When using wildcards with find -name, always wrap patterns in quotes.

#

# Example:

# find . -name "*.txt"

#

# NOT:

# find . -name *.txt

#

# Without quotes, the shell may expand *.txt before find receives it.

# ==============================================================================

# ==============================================================================

# 1. ASTERISK (*)

# ==============================================================================

#

# Meaning:

# Matches ZERO or MORE characters.

#

# Think:

# * = "anything"

#

# ------------------------------------------------------------------------------

# Match all .txt files

find . -name "*.txt"

# Matches:

# notes.txt

# report.txt

# abc.txt

# Does NOT match:

# report.pdf

# ------------------------------------------------------------------------------

# Match all files starting with "test"

find . -name "test*"

# Matches:

# test

# test1

# testfile

# testing.java

# ------------------------------------------------------------------------------

# Match all files ending with ".java"

find . -name "*.java"

# Matches:

# Hello.java

# ArraysTest.java

# Main.java

# ------------------------------------------------------------------------------

# Match files containing "log"

find . -name "*log*"

# Matches:

# log.txt

# systemlog.txt

# mylogfile.log

# ==============================================================================

# 2. QUESTION MARK (?)

# ==============================================================================

#

# Meaning:

# Matches EXACTLY ONE character.

#

# Think:

# ? = one and only one character

#

# ------------------------------------------------------------------------------

find . -name "file?.txt"

# Matches:

# file1.txt

# fileA.txt

# fileX.txt

#

# Does NOT match:

# file10.txt

# file.txt

# ------------------------------------------------------------------------------

find . -name "?.txt"

# Matches:

# a.txt

# b.txt

# x.txt

#

# Does NOT match:

# abc.txt

# ==============================================================================

# 3. CHARACTER SET []

# ==============================================================================

#

# Meaning:

# Match ONE character from the given set.

#

# ------------------------------------------------------------------------------

find . -name "file[123].txt"

# Matches:

# file1.txt

# file2.txt

# file3.txt

#

# Does NOT match:

# file4.txt

# ------------------------------------------------------------------------------

find . -name "test[abc].txt"

# Matches:

# testa.txt

# testb.txt

# testc.txt

# ==============================================================================

# 4. CHARACTER RANGE [a-z]

# ==============================================================================

#

# Meaning:

# Match ONE character within a range.

#

# ------------------------------------------------------------------------------

find . -name "file[a-z].txt"

# Matches:

# filea.txt

# fileb.txt

# filez.txt

#

# Does NOT match:

# file1.txt

# ------------------------------------------------------------------------------

find . -name "file[0-9].txt"

# Matches:

# file0.txt

# file5.txt

# file9.txt

# ==============================================================================

# 5. NEGATED CHARACTER SET [!]

# ==============================================================================

#

# Meaning:

# Match any character EXCEPT those listed.

#

# ------------------------------------------------------------------------------

find . -name "file[!0-9].txt"

# Matches:

# filea.txt

# filex.txt

#

# Does NOT match:

# file1.txt

# file5.txt

# ------------------------------------------------------------------------------

find . -name "[!A-Z]*"

# Matches files NOT beginning with uppercase letters.

# ==============================================================================

# 6. COMBINING WILDCARDS

# ==============================================================================

#

# Wildcards can be combined.

#

# ------------------------------------------------------------------------------

find . -name "test[0-9]?.txt"

# Explanation:

# test      -> literal text

# [0-9]     -> one digit

# ?         -> one character

# .txt      -> extension

#

# Matches:

# test1a.txt

# test9x.txt

#

# Does NOT match:

# test11.txt

# ------------------------------------------------------------------------------

find . -name "*report[0-9].pdf"

# Matches:

# monthlyreport1.pdf

# annualreport9.pdf

# ==============================================================================

# CASE SENSITIVE VS CASE INSENSITIVE

# ==============================================================================

# -name = case sensitive

find . -name "*.txt"

# Matches:

# file.txt

#

# Does NOT match:

# FILE.TXT

# ------------------------------------------------------------------------------

# -iname = case insensitive

find . -iname "*.txt"

# Matches:

# file.txt

# FILE.TXT

# File.Txt

# ==============================================================================

# REAL-WORLD FIND EXAMPLES

# ==============================================================================

# Find all Java files

find . -name "*.java"

# Find all log files

find /var/log -name "*.log"

# Find all shell scripts

find . -name "*.sh"

# Find files beginning with "test"

find . -name "test*"

# Find files ending with a digit

find . -name "*[0-9]"

# Find files with exactly 3 characters before .txt

find . -name "???.txt"

# Matches:

# abc.txt

# xyz.txt

# Does NOT match:

# ab.txt

# abcd.txt

# Find files beginning with uppercase letter

find . -name "[A-Z]*"

# Find files beginning with lowercase letter

find . -name "[a-z]*"

# ==============================================================================

# INTERVIEW QUESTIONS

# ==============================================================================

# Q1: Difference between * and ?

#

# *  -> Matches zero or more characters

# ?  -> Matches exactly one character

# Q2: Why use quotes around wildcards in find?

#

# To prevent shell expansion before find processes the pattern.

# Q3: Difference between -name and -iname?

#

# -name  -> Case sensitive

# -iname -> Case insensitive

# ==============================================================================

# MEMORY TRICK

# ==============================================================================

#

# *        => Anything

# ?        => One character

# [abc]    => One from the set

# [a-z]    => One from the range

# [!abc]   => Anything except the set

#

# Master these 5 patterns and you'll understand 95% of wildcard usage in find.

# ==============================================================================

# Search any file with "report" in its name, followed by a single digit, and ending with .pdf (case insensitive)
find . -iname "*report[0-9].pdf"
# -iname makes the search case insensitive, so it will match "Report1.pdf", "report2.pdf", "REPORT3.PDF", etc.
# Find all files, directories, and symbolic links in the current directory and subdirectories
find .
# This will list every file, folder, and symlink starting from the current directory downwards
# Find all directories (folders) in the current directory and subdirectories
find . -type d
# This will show only directories, excluding regular files and symlinks
# Find all symbolic links in the current directory and subdirectories
find . -type l
# This will display only symbolic links, excluding regular files and directories        
# Find all files larger than 1MB in the current directory and subdirectories
find . -type f -size +1M
# This will list regular files that are greater than 1 megabyte in size 
# Find all files modified in the last 7 days
find . -type f -mtime -7
# This will show files that were modified within the last 7 days    
# Find all empty files in the current directory and subdirectories
find . -type f -empty
# This will list regular files that have a size of zero bytes (empty files) 
# Find all files with permissions 777 (read/write/execute for everyone)
find . -type f -perm 777
# This will display regular files that have permissions set to 777  
# Find all files owned by user "john"
find . -type f -user john
# This will show regular files that are owned by the user named "john"
# Find all files that are NOT owned by user "john"
find . -type f ! -user john
# This will list regular files that are owned by any user except "john" 
find . -type f -name "*.log" -size +5M
# This will find all regular files with a .log extension that are larger than 5 megabytes in size   
find . -type f -name "*.log" -size -5k -mtime -30
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and modified within the last 30 days
find . -type f -name "*.log" -size -5k -mtime +5
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and modified more than 5 days ago
find . -type f -name "*.log" -size -5k -mtime 10
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and modified exactly 10 days ago
find . -type f -name "*.log" -size -5k -mmin -30
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and modified within the last 30 minutes
find . -type f -name "*.log" -size -5k -mmin +30
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and modified more than 30 minutes ago
find . -type f -name "*.log" -size -5k -mmin 15
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and modified exactly 15 minutes ago
find . -type f -name "*.log" -size -5k -amin -30
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and accessed within the last 30 minutes
find . -type f -name "*.log" -size -5k -amin +30
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and accessed more than 30 minutes ago
find . -type f -name "*.log" -size -5k -amin 15
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and accessed exactly 15 minutes ago  
find . -type f -name "*.log" -size -5k -cmin -30
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and changed within the last 30 minutes
find . -type f -name "*.log" -size -5k -cmin +30
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and changed more than 30 minutes ago
find . -type f -name "*.log" -size -5k -cmin 15
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and changed exactly 15 minutes ago   
find . -type f -name "*.log" -size -5k -atime 15
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and accessed exactly 15 days ago
find . -type f -name "*.log" -size -5k -ctime 15
# This will find all regular files with a .log extension that are smaller than 5 kilobytes and changed exactly 15 days ago  

# Using Logical Operators with find
# Find all .log files that are either larger than 5MB OR modified within the last 7 days
find . -type f -name "*.log" \( -size +5M -o -mtime -7 \)
# This will find regular files with a .log extension that are either larger than 5 megabytes OR modified within the last 7 days
# Find all .log files that are larger than 5MB AND modified within the last 7 days
find . -type f -name "*.log" -size +5M -mtime -7
# This will find regular files with a .log extension that are larger than 5 megabytes AND modified within the last 7 days
# Find all .log files that are NOT larger than 5MB
find . -type f -name "*.log" ! -size +5M
# This will find regular files with a .log extension that are NOT larger than 5 megabytes in size       
find /home/ratnakar -type f -name ".txt" -and -size +1M
# This will find all regular files with a .txt extension that are larger than 1 megabyte in size within the /home/ratnakar directory and its subdirectories 
# Finding file from a specific path with Logical Operators
find /home/ratnakar -type f -name "*.log" \( -size +5M -o -mtime -7 \)
# This will find regular files with a .log extension that are either larger than 5 megabytes OR modified within the last 7 days, but only within the /home/ratnakar directory and its subdirectories    
find /home/ratnakar -type f -name "*.log" \( -size +5M -or -mtime -7 \) -and ! -name "error*"
# This will find regular files with a .log extension that are either larger than 5 megabytes OR modified within the last 7 days, but only within the /home/ratnakar directory and its subdirectories, and excludes files that start with "error" in their name 
find '('-size +200M -atime -30 -or -size +500M ')'
# This will find files that are either larger than 200 megabytes and accessed within the last 30 days OR larger than 500 megabytes, regardless of access time.
# in above syntax we are using parentheses to group conditions, and the -or operator to combine them. The -atime option checks for files accessed within the last 30 days, while the -size option checks for file sizes.

###############################################################################
# Find Empty Files Older Than 30 Days
###############################################################################

# Command
find /home/ratnakar -type f -empty -mtime +30

# Explanation:
# Searches the /home/ratnakar directory and all of its subdirectories.
#
# -type f
# Searches only regular files.
#
# -empty
# Matches files whose size is exactly 0 bytes.
#
# -mtime +30
# Finds files that were modified more than 30 days ago.
#
# Expected Output:
#
# /home/ratnakar/logs/empty.log
# /home/ratnakar/test/test1.txt
#
# Only empty files older than 30 days are displayed.



###############################################################################
# Find Empty Files Older Than 30 Days From Current Directory
###############################################################################

# Command
find . -type f -empty -mtime +30

# Explanation:
# '.' means search starts from the current directory.
#
# Searches only regular files.
#
# Finds files having 0-byte size.
#
# Shows files modified more than 30 days ago.
#
# Expected Output:
#
# ./logs/test.log
# ./temp/empty.txt



###############################################################################
# Delete Empty Files Older Than 60 Days
###############################################################################

# Command
find . -type f -empty -mtime +60 -exec rm {} \;

# Explanation:
#
# find .
# Starts searching from the current directory.
#
# -type f
# Searches only regular files.
#
# -empty
# Matches only empty (0-byte) files.
#
# -mtime +60
# Finds files modified more than 60 days ago.
#
# -exec
# Executes a command for every file found.
#
# rm
# Removes (deletes) the matching file.
#
# {}
# Placeholder representing the current file found by find.
#
# \;
# Indicates the end of the command executed by -exec.
#
# Internally executes:
#
# rm ./file1.txt
# rm ./logs/empty.log
# rm ./backup/test.txt
#
# Expected Output:
#
# Matching files are deleted.
# Normally rm does not print anything on success.



###############################################################################
# Delete Empty Directories Older Than 60 Days
###############################################################################

# Command
find . -type d -empty -mtime +60 -exec rm -r {} \;

# Explanation:
#
# -type d
# Searches only directories.
#
# -empty
# Matches empty directories only.
#
# rm -r
# Removes directories recursively.
#
# Expected Output:
#
# Empty directories older than 60 days are deleted.
#
# NOTE:
# Using:
#
# rm -rd
#
# also works, but the more common syntax is:
#
# rm -r
#
# or
#
# rm -rf (use carefully)



###############################################################################
# General Syntax Of -exec
###############################################################################

# Syntax
find <search-path> <search-condition> -exec <command> {} \;

# Explanation:
#
# <search-path>
# Directory from where find starts searching.
#
# <search-condition>
# Search criteria such as:
#
# -name
# -type
# -size
# -mtime
# -user
# -perm
#
# -exec
# Executes another command on every matching file.
#
# <command>
# Any Linux command like:
#
# rm
# cp
# mv
# chmod
# chown
# cat
# ls
# file
#
# {}
# Placeholder for the current file found.
#
# \;
# Terminates the command supplied to -exec.
#
# Example:
#
# find . -name "*.txt" -exec rm {} \;
#
# Internally executes:
#
# rm file1.txt
# rm file2.txt
# rm file3.txt



###############################################################################
# Move All PDF Files To Another Directory
###############################################################################

# Command
find . -name "*.pdf" -exec mv {} /backup/ \;

# Explanation:
#
# Searches for every PDF file.
#
# For each file found,
# executes:
#
# mv filename.pdf /backup/
#
# Example:
#
# find returns:
#
# ./resume.pdf
# ./invoice.pdf
#
# Internally executes:
#
# mv ./resume.pdf /backup/
# mv ./invoice.pdf /backup/
#
# Expected Output:
#
# All PDF files are moved into /backup/.



###############################################################################
# More Efficient Version Of -exec
###############################################################################

# Command
find . -name "*.pdf" -exec mv {} /backup/ +

# Explanation:
#
# '+' groups multiple files into one command.
#
# Internally executes:
#
# mv file1.pdf file2.pdf file3.pdf /backup/
#
# This is much faster than executing mv once for every file.



###############################################################################
# Understanding "find . -type f -exec file {} \;"
###############################################################################

# Command
find . -type f -exec file {} \;

# Purpose:
#
# Displays the type of every regular file.
#
# The "file" command identifies file types by examining file contents,
# not just file extensions.

# Breakdown
#
# find
# Linux command used to search files and directories.
#
# .
# Current directory.
#
# -type f
# Search only regular files.
#
# -exec
# Execute another command.
#
# file
# Identifies file type.
#
# {}
# Represents each file found.
#
# \;
# End of the command.

#
# Example Directory:
#
# project/
# ├── test.txt
# ├── image.png
# ├── archive.zip
# ├── script.sh
#
#
# Internally executes:
#
# file ./test.txt
# file ./image.png
# file ./archive.zip
# file ./script.sh
#
#
# Example Output:
#
# ./test.txt   : ASCII text
# ./image.png  : PNG image data
# ./archive.zip: Zip archive data
# ./script.sh  : Bourne-Again shell script



###############################################################################
# Another Example
###############################################################################

# Command
find . -name "*.txt" -exec cat {} \;

# Internally executes:
#
# cat file1.txt
# cat file2.txt
# cat file3.txt
#
# Expected Output:
#
# Displays the contents of every matching text file.



###############################################################################
# Difference Between "\;" And "+"
###############################################################################

# Using \;

find . -name "*.txt" -exec rm {} \;

# Internally executes:
#
# rm file1.txt
# rm file2.txt
# rm file3.txt
#
# One command execution per file.
#
# Slower for thousands of files.



# Using +

find . -name "*.txt" -exec rm {} +

# Internally executes:
#
# rm file1.txt file2.txt file3.txt file4.txt
#
# Executes rm only once.
#
# Faster and recommended for large numbers of files.



###############################################################################
# Interview Questions
###############################################################################

# Q1. What is {} in -exec?
#
# {} is a placeholder representing the current file found by find.

# Q2. Why is \; used?
#
# It tells find where the -exec command ends.
# The backslash prevents the shell from interpreting ';'.

# Q3. What is the difference between \; and + ?
#
# \;
# Executes the command once for every file.
#
# +
# Executes the command once for multiple files.
# Faster and more efficient.

# Q4. What does the file command do?
#
# It identifies the type of a file by inspecting its contents instead
# of relying on the file extension.

# Q5. Which is better for thousands of files?
#
# find ... -exec command {} +
#
# because it minimizes process creation and executes much faster.
###############################################################################
# End of Notes
###############################################################################

#!/bin/bash

###############################################################################
# File Name : xargs_examples.sh
# Description:
#   This file demonstrates various examples of the Linux xargs command.
#
# What is xargs?
#   xargs reads input from Standard Input (stdin) and converts it into
#   command-line arguments for another command.
#
# Syntax:
#   command | xargs another_command
#
# Flow:
#   command ----> xargs ----> another_command
#
###############################################################################

###############################################################################
# Example 1
# Delete multiple files using xargs
###############################################################################

# Command
echo "file1.txt file2.txt file3.txt" | xargs rm

# Explanation:
# echo prints three file names.
# xargs reads those names and passes them as arguments to rm.
#
# Internally executes:
# rm file1.txt file2.txt file3.txt
#
# Expected Output:
# Files are deleted.
# No output is displayed if deletion is successful.



###############################################################################
# Example 2
# Display contents of multiple files
###############################################################################

# Command
echo "file1.txt file2.txt" | xargs cat

# Explanation:
# xargs passes the file names to the cat command.
#
# Internally executes:
# cat file1.txt file2.txt
#
# Expected Output:
# Contents of file1.txt followed by contents of file2.txt.



###############################################################################
# Example 3
# Delete all .log files found using find
###############################################################################

# Command
find . -name "*.log" | xargs rm

# Explanation:
# find searches for all .log files.
# xargs passes all matching files to rm.
#
# Example find output:
# ./app.log
# ./server.log
# ./debug.log
#
# Internally executes:
# rm ./app.log ./server.log ./debug.log
#
# Expected Output:
# All matching log files are deleted.



###############################################################################
# Example 4
# Identify file types
###############################################################################

# Command
find . -type f | xargs file

# Explanation:
# find lists every regular file.
# xargs passes all file names to the file command.
#
# Internally executes:
# file file1 file2 file3
#
# Example Output:
#
# test.txt  : ASCII text
# image.png : PNG image data
# script.sh : Bourne-Again shell script



###############################################################################
# Example 5
# Count number of lines in every text file
###############################################################################

# Command
find . -name "*.txt" | xargs wc -l

# Explanation:
# find searches for every text file.
# xargs passes them to wc.
#
# Internally executes:
# wc -l file1.txt file2.txt file3.txt
#
# Example Output:
#
# 20 file1.txt
# 55 file2.txt
# 13 file3.txt
# 88 total



###############################################################################
# Example 6
# Copy all text files into another directory
###############################################################################

# Command
find . -name "*.txt" | xargs -I {} cp {} /backup/

# Explanation:
# -I {} tells xargs to use {} as a placeholder.
#
# Internally executes:
#
# cp file1.txt /backup/
# cp file2.txt /backup/
# cp file3.txt /backup/
#
# Expected Output:
# All text files are copied to /backup/.



###############################################################################
# Example 7
# List detailed information of files larger than 10 MB
###############################################################################

# Command
find . -size +10M | xargs ls -lh

# Explanation:
# find locates files larger than 10 MB.
# xargs passes them to ls -lh.
#
# Internally executes:
# ls -lh file1.iso file2.zip
#
# Example Output:
#
# -rw-r--r-- 1 user user 1.5G backup.iso
# -rw-r--r-- 1 user user 800M movie.zip



###############################################################################
# Example 8
# Search for a word inside Java files
###############################################################################

# Command
find . -name "*.java" | xargs grep "main"

# Explanation:
# find searches all Java files.
# xargs passes them to grep.
#
# Internally executes:
#
# grep "main" File1.java File2.java
#
# Example Output:
#
# File1.java: public static void main(String[] args)
# File2.java: public static void main(String[] args)



###############################################################################
# Example 9
# Safe way to use xargs with filenames containing spaces
###############################################################################

# Command
find . -name "*.txt" -print0 | xargs -0 rm

# Explanation:
# -print0 makes find separate filenames using NULL characters.
# xargs -0 reads NULL-separated names.
#
# This safely handles filenames such as:
#
# My File.txt
# Project Report.txt
#
# Expected Output:
# Matching files are deleted safely.



###############################################################################
# Example 10
# Echo every file found
###############################################################################

# Command
find . -name "*.txt" | xargs echo

# Explanation:
# xargs passes all filenames to echo.
#
# Internally executes:
#
# echo file1.txt file2.txt file3.txt
#
# Example Output:
#
# file1.txt file2.txt file3.txt



###############################################################################
# Example 11
# Using xargs with mkdir
###############################################################################

# Command
echo "Dev Test Production" | xargs -n 1 mkdir

# Explanation:
# -n 1 passes one argument per command.
#
# Internally executes:
#
# mkdir Dev
# mkdir Test
# mkdir Production
#
# Expected Output:
# Three directories are created.



###############################################################################
# Example 12
# Using xargs with touch
###############################################################################

# Command
echo "a.txt b.txt c.txt" | xargs touch

# Explanation:
# xargs sends the filenames to touch.
#
# Internally executes:
#
# touch a.txt b.txt c.txt
#
# Expected Output:
# Three empty files are created.



###############################################################################
# Interview Questions
###############################################################################

# Q1. What is xargs?
#
# xargs reads input from standard input and converts it into command-line
# arguments for another command.

# Q2. Why use xargs?
#
# It avoids manually typing multiple arguments and efficiently processes
# output from other commands like find, grep, ls, etc.

# Q3. Difference between xargs and -exec?
#
# find -exec executes a command directly from find.
#
# xargs reads input from another command and builds arguments.

# Q4. Which is faster?
#
# xargs is generally faster because it invokes the command fewer times.

# Q5. How to safely handle filenames with spaces?
#
# Use:
#
# find . -print0 | xargs -0

###############################################################################
# End of File
###############################################################################
