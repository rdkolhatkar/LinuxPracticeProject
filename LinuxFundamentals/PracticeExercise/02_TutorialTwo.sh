# Manual Pages : manual pages are the documentation for commands and programs in Linux. They provide detailed information about how to use a command, its options, and examples.
# To access the manual page for a command, you can use the man command followed by the name of the command.
man cat
# This command opens the manual page for the cat command, which is used to concatenate and display the contents of files. The manual page will provide information about the command's syntax, options, and usage examples. You can navigate through the manual page using the arrow keys, and press q to exit when you're done.
# You can also search for specific keywords within the manual page by pressing / followed by the keyword you want to search for. For example, if you want to search for the option that allows you to display line numbers in the cat command, you can press / and then type "line numbers" to find the relevant information in the manual page.
man cp
# This command opens the manual page for the cp command, which is used to copy files and directories. Similar to the previous example, you can navigate through the manual page to learn about the various options and usage examples for the cp command.
man ls
# This command opens the manual page for the ls command, which is used to list the contents of a directory. The manual page will provide information about the different options available for the ls command, such as how to display hidden files, sort the output, and format the listing. You can explore the manual page to learn more about the capabilities of the ls command and how to use it effectively in your Linux environment.
man rm
# This command opens the manual page for the rm command, which is used to remove files and directories. The manual page will provide information about the various options available for the rm command, such as how to force deletion, remove directories recursively, and handle symbolic links. It's important to read the manual page for the rm command carefully, as it can permanently delete files without confirmation if used with certain options. Always make sure to understand the options and their implications before using the rm command to avoid accidental data loss.
man pwd
# This command opens the manual page for the pwd command, which stands for "print working directory". The manual page will provide information about the syntax and usage of the pwd command, which is used to display the current working directory in the terminal. The manual page may also include examples of how to use the pwd command in different contexts, such as when navigating through directories or when scripting. Understanding the pwd command is essential for managing your file system and keeping track of your location within the directory structure in Linux.
# ============================================
# to exit the manual page, press q
# ============================================
# to traverse through the manual page, use the arrow keys or the spacebar to scroll down and the b key to scroll up.

#!/bin/bash

###############################################################################
# HOW TO CHANGE DRIVES IN LINUX WSL
# ----------------------------------
# In Windows we use:
#   C:
#   D:
#   E:
#   F:
#
# But in WSL (Linux), Windows drives are mounted inside:
#   /mnt/
#
# Mapping:
#   C:  ->  /mnt/c
#   D:  ->  /mnt/d
#   E:  ->  /mnt/e
#   F:  ->  /mnt/f
###############################################################################


###############################################################################
# CHECK CURRENT DIRECTORY
###############################################################################

pwd
# Shows your current working directory


###############################################################################
# LIST FILES IN CURRENT DIRECTORY
###############################################################################

ls
# Lists files and folders


###############################################################################
# CHANGE TO C DRIVE
###############################################################################

cd /mnt/c
# Moves you to Windows C drive


###############################################################################
# CHANGE TO D DRIVE
###############################################################################

cd /mnt/d
# Moves you to Windows D drive


###############################################################################
# CHANGE TO E DRIVE
###############################################################################

cd /mnt/e
# Moves you to Windows E drive


###############################################################################
# CHANGE TO F DRIVE
###############################################################################

cd /mnt/f
# Moves you to Windows F drive


###############################################################################
# NAVIGATE TO A SPECIFIC FOLDER
# Example: D:\Projects\Python
###############################################################################

cd /mnt/d/Projects/Python
# This is how Windows path:
# D:\Projects\Python
# becomes:
# /mnt/d/Projects/Python


###############################################################################
# GO BACK ONE DIRECTORY
###############################################################################

cd ..
# Moves one folder up


###############################################################################
# GO TO ROOT DIRECTORY
###############################################################################

cd /
# Moves to Linux root directory


###############################################################################
# GO TO HOME DIRECTORY
###############################################################################

cd ~
# Moves to your WSL home directory


###############################################################################
# CREATE A SHORTCUT (SYMBOLIC LINK) TO D DRIVE
# This makes it easier to access D drive quickly
###############################################################################

ln -s /mnt/d ~/d_drive
# Creates a shortcut named "d_drive" in your home folder


###############################################################################
# USE THE SHORTCUT
###############################################################################

cd ~/d_drive
# Now you can quickly access D drive


###############################################################################
# HOW WSL MOUNTS DRIVES INTERNALLY
###############################################################################

# Windows drives are automatically mounted under /mnt
# You can check mounted drives using:

mount | grep /mnt
# Shows all mounted Windows drives


###############################################################################
# MANUAL MOUNT (Advanced - Usually Not Required)
###############################################################################

# If a drive is not mounted automatically, you can mount manually:

sudo mkdir -p /mnt/x
sudo mount -t drvfs X: /mnt/x

# Replace X with drive letter (for example D:)


###############################################################################
# IMPORTANT NOTES
###############################################################################

# 1. Drive letters must be lowercase:
#    Correct:   /mnt/d
#    Wrong:     /mnt/D
#
# 2. WSL uses Linux file system rules.
# 3. Avoid editing Linux system files from Windows directly.
# 4. Performance is better if project files are inside WSL home directory.
###############################################################################


###############################################################################
# PERFORMANCE TIP
###############################################################################

# For better performance, store projects inside:
#   /home/your-username/
# Instead of:
#   /mnt/c or /mnt/d
###############################################################################
# Note: " #!/bin/bash " is called a shebang. It tells the system that this script should be run using the Bash shell. This line is important for ensuring that the script executes with the correct interpreter, especially when running it in different environments or when executing it directly from the command line.