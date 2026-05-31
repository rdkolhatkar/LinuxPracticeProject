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

