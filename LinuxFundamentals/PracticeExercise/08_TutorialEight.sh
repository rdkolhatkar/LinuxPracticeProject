# Copy files and directories And Move files and directories
# The cp command is used to copy files and directories in Linux.
# To copy a file, use the following syntax:
# cp [options] source_file destination_file
# For example, to copy a file named "file1.txt" to a new file named "file2.txt", you can use the following command:
cp file1.txt file2.txt
# This will create a copy of "file1.txt" and name it "file2.txt". If "file2.txt" already exists, it will be overwritten without any warning.
# To copy a directory and its contents, you can use the -r (recursive) option with the cp command. The syntax is as follows:
# cp -r source_directory destination_directory
# For example, to copy a directory named "dir1" to a new directory named "dir2", you can use the following command:
cp -r dir1 dir2
# This will create a copy of "dir1" and all its contents in a new directory named "dir2". If "dir2" already exists, it will be overwritten without any warning. 
# You can also use the -i (interactive) option with the cp command to prompt you before overwriting any existing files. For example:
cp -i file1.txt file2.txt
# This will ask you for confirmation before overwriting "file2.txt" if it already exists. You can choose to proceed with the copy or cancel it based on your preference.        
cp file.mp4 /home/user/Videos/
# This command will copy the file "file.mp4" to the "Videos" directory located in the user's home directory. Make sure to replace "user" with your actual username.
cp -r /home/user/Documents/ /home/user/Backup/
# This command will copy the entire "Documents" directory and its contents to a new directory named "Backup" in the user's home directory. Again, replace "user" with your actual username.
cp test.txt ../../rkdir/
# This command will copy the file "test.txt" to the directory located two levels up from the current directory, which is "rkdir". Make sure to adjust the path as needed based on your current directory structure.
# ../ refers to the parent directory, so ../../ refers to the grandparent directory. Make sure to navigate to the correct directory before executing the command to ensure that the file is copied to the intended location.    
# Copy and rename a file
cp file1.txt /home/user/Documents/file2.txt
# This command will copy "file1.txt" to the "Documents" directory in the user's home directory and rename it to "file2.txt". Make sure to replace "user" with your actual username. After executing this command, "file1.txt" will still exist in its original location, and a new copy named "file2.txt" will be created in the specified destination. You can verify the copy by checking the "Documents" directory for the presence of "file2.txt".
# Move files and directories
# The mv command is used to move files and directories in Linux. It can also be used to rename files and directories.
# To move a file, use the following syntax:
# mv [options] source_file destination_file
# For example, to move a file named "file1.txt" to a new location and name it "file2.txt", you can use the following command:
mv file1.txt /home/user/Documents/file2.txt
# This will move "file1.txt" to the "Documents" directory in the user's home directory and rename it to "file2.txt". Make sure to replace "user" with your actual username.
# To move a directory and its contents, you can use the same mv command without any additional options. For example:
mv dir1 /home/user/Documents/dir1
# This will move the entire "dir1" directory and its contents to the "Documents" directory in the user's home directory. Again, replace "user" with your actual username.
# You can also use the mv command to rename a file or directory without changing its location. For example:
mv oldname.txt newname.txt
# This command will rename the file "oldname.txt" to "newname.txt" in the current directory without moving it to a different location. Make sure to adjust the file names as needed based on your specific use case.    
mv test.txt ../../rkdir/
# This command will move the file "test.txt" to the directory located two levels up from the current directory, which is "rkdir". Make sure to adjust the path as needed based on your current directory structure. After executing this command, "test.txt" will no longer be in its original location and will be moved to the specified destination. 
# Move and rename a file
mv file1.txt /home/user/Documents/file2.txt
# This command will move "file1.txt" to the "Documents" directory in the user's home directory and rename it to "file2.txt". Make sure to replace "user" with your actual username. After executing this command, "file1.txt" will no longer be in its original location and will be moved to the specified destination with the new name "file2.txt".
