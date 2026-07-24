# Linux Permissions
# l [r w x] -> There are Primarily 3 Values called " - l d" here hyphan " - ", Then " l ", and lastly " d " are indicating the type of file which we have in our system. And [r, w, x] is the indication of Read, Write and Execute Access respectively.
# For Example:
    #   1) Hyphan " - " is used for indicating any type of regular file, it can be anything like ".txt", ".cs", ".java", ".png" etc.
    #   2) " l " is used for indicating a link
    #   3) " d " is used for indicating a directory or folder
# If we have a directory with this kind of permission -> d r w x r w x r w x
# Then here it will be understod like this -> d [r w d][r w d][r w d]
# Here First " d " means Directory, and first [r w d] represents the Read, Write and Execute permissions of the Owner who created that folder.
# Then Second three [r w d] represents the Read, Write and Execute permissions of the Group or Team whose one of the member is the owner who created that folder.
# And Third and [r w d] represents the Read, Write and Execute permissions of the other people or groups who are not related to the owner but owner has given the explicit permission to them for accessing this directory.
# If there is hyphan " - " in place of [r w d] then that means the specific read, write and execute permission is not present. For example if it looks like this [r - -] then that means user only have the permission to read the directory and not the modify or update the directory using Write and Execute option.
