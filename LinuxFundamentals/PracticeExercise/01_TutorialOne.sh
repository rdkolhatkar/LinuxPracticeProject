# Basic commands to get you started with Linux
# 1. Open a terminal and navigate to your home directory
cd ~    # This command takes you to your home directory, which is usually /home/yourusername
# 2. Create a new directory called "LinuxPractice"
mkdir LinuxPractice # This command creates a new directory named "PracticeFiles" in your current location (home directory)
# 3. Change into the "PracticeFiles" directory
cd PracticeFiles # This command changes your current directory to "PracticeFiles"
# 4. Create a new file called "Ratnakar.txt" and add some text to it
echo "Hello, this is Ratnakar's file." > Ratnakar.txt # This command creates a new file named "Ratnakar.txt" and writes the text "Hello, this is Ratnakar's file." into it. If the file already exists, it will overwrite the existing content.
# 5. Display the contents of "Ratnakar.txt"
cat Ratnakar.txt # This command displays the contents of "Ratnakar.txt" in the terminal. You should see the text you added in the previous step.
#6. Display the contents of "Ratnakar.txt" with line numbers
cat -n Ratnakar.txt # This command displays the contents of "Ratnakar.txt" with line numbers. Each line of text will be prefixed with its corresponding line number, making it easier to reference specific lines in the file.
cat --number Ratnakar.txt # This command is an alternative way to display the contents of "Ratnakar.txt" with line numbers. It achieves the same result as the previous command, showing each line of text with its corresponding line number.
# 7. Create a copy of "Ratnakar.txt" called "Ratnakar_backup.txt"
cp Ratnakar.txt Ratnakar_backup.txt # This command creates a copy of "Ratnakar.txt" named "Ratnakar_backup.txt" in the same directory.
# 8. List the files in the current directory
ls # This command lists all the files and directories in the current directory. You should see both "Ratnakar.txt" and "Ratnakar_backup.txt" in the output.
# 9. Remove the original "Ratnakar.txt" file
rm Ratnakar.txt # This command deletes the file "Ratnakar.txt" from the current directory. Be cautious when using the rm command, as it permanently deletes files without confirmation.
# 10. Check the current working directory and list the files again
pwd # This command prints the current working directory, allowing you to confirm that you are in the correct location. You should see the path to your "PracticeFiles" directory.
ls # This command lists the files in the current directory again. After removing "Ratnakar.txt", you should only see "Ratnakar_backup.txt" in the output.
# ============================================
# ncal Installation Guide (Different Systems)
# ============================================

# ---------- Ubuntu / Debian ----------
# Step 1: Update package list
# sudo apt update
#
# Step 2: Install ncal
# sudo apt install ncal
#
# If ncal is not found, install bsdmainutils
# sudo apt install bsdmainutils


# ---------- RHEL / CentOS / Rocky / AlmaLinux ----------
# Using yum (older versions)
# sudo yum install ncal
#
# Using dnf (newer versions)
# sudo dnf install ncal


# ---------- Fedora ----------
# sudo dnf install ncal


# ---------- Arch Linux / Manjaro ----------
# sudo pacman -S ncal


# ---------- macOS (Homebrew) ----------
# Step 1: Install Homebrew (if not installed)
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
#
# Step 2: Install ncal
# brew install ncal


# ---------- Verify Installation ----------
# ncal
# ncal -y
# 11. Display the calendar for the current month
ncal # This command displays a calendar in the terminal. It shows the current month and year, along with the days of the week and the dates. You can use this command to quickly check the calendar without leaving the terminal.
ncal july 2022 # This command displays the calendar for July 2022. You can replace "july 2022" with any month and year to view the corresponding calendar. For example, "ncal december 2023" would show the calendar for December 2023.
ncal november 2000 -w # This command displays the calendar for November 2000 with the week numbers included. The "-w" option adds week numbers to the calendar, which can be helpful for planning and scheduling purposes. You can use this option with any month and year to see the week numbers alongside the dates.
ncal october 1999 -w -M # This command displays the calendar for October 1999 with week numbers and Monday as the first day of the week. The "-M" option sets Monday as the first day of the week instead of Sunday, which is the default. This can be useful for users who prefer to start their week on Monday when viewing calendars.
ncal january 2025 -wM # This command displays the calendar for January 2025 with week numbers and Monday as the first day of the week. The "-wM" options combine both features, showing week numbers and starting the week on Monday. You can use this format to view any month and year with these settings.
# 12. Display the current date and time
date # This command displays the current date and time in the terminal. The output will include the day of the week, month, day of the month, time, and year. This is useful for quickly checking the current date and time without needing to look at a clock or calendar.
# 13. Display the current system uptime
uptime # This command shows how long the system has been running since the last reboot. It also displays the current time, the amount of time the system has been up, the number of users currently logged in, and the system load averages for the past 1, 5, and 15 minutes. This information can be useful for monitoring system performance and identifying potential issues.