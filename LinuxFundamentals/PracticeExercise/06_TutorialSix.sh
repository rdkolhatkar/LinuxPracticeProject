# Nano command is a simple text editor that runs in the terminal. It is often used for editing configuration files or writing simple scripts.
# If file is not there then it will create a new file and open it for editing. If the file already exists, it will open the existing file for editing.
# To open a file with nano, you can use the command "nano filename". For example, "nano myfile.txt" will open the file "myfile.txt" in the nano editor. If "myfile.txt" does not exist, it will create a new file with that name and open it for editing.
# Once you are in the nano editor, you can start typing your content. You can use the arrow keys to navigate through the text. To save your changes, you can press "Ctrl + O" (which stands for "Write Out"), and then press "Enter" to confirm the filename. To exit the nano editor, you can press "Ctrl + X".
# If you have unsaved changes and try to exit, nano will prompt you to save your changes. You can choose to save or discard the changes before exiting.
# Nano also has various keyboard shortcuts for editing, such as "Ctrl + K" to cut a line, "Ctrl + U" to paste a line, and "Ctrl + W" to search for text within the file.
nano myfile.txt # This command opens the file "myfile.txt" in the nano editor. If "myfile.txt" does not exist, it will create a new file with that name and open it for editing.
# To exit nano, you can press "Ctrl + X". If you have unsaved changes, nano will prompt you to save your changes before exiting. You can choose to save or discard the changes as needed.
# Ctrl + O (Write Out) is used to save the changes you have made in the nano editor. When you press "Ctrl + O", nano will prompt you to confirm the filename you want to save to. You can either press "Enter" to save to the current filename or type a new filename and then press "Enter" to save with that name.
man nano # This command opens the manual page for the nano text editor. The manual page provides detailed information about the nano command, including its usage, options, and keyboard shortcuts. You can navigate through the manual page using the arrow keys, and you can exit the manual page by pressing "q".
# Press "q" to exit the manual page and return to the terminal.
# Press "Ctrl + G" while in the nano editor to access the help menu, which provides a list of keyboard shortcuts and commands available in nano. This can be useful for learning how to use nano more effectively.
# press "Ctrl + KeyDown" to move the cursor down one line, "Ctrl + KeyUp" to move the cursor up one line, "Ctrl + KeyLeft" to move the cursor left one word, and "Ctrl + KeyRight" to move the cursor right one word. These shortcuts can help you navigate through your text more efficiently while editing in nano.
# KeyDown and KeyUp mean the ↓ (Down Arrow) and ↑ (Up Arrow) keys, and KeyLeft and KeyRight mean the ← (Left Arrow) and → (Right Arrow) keys on your keyboard.
# Start of line: "Ctrl + A" moves the cursor to the beginning of the current line.
# End of line: "Ctrl + E" moves the cursor to the end of the current line.
# Alt + KeyDown: "Alt + ↓" moves the current line down one line.
# Alt + KeyUp: "Alt + ↑" moves the current line up one line.
# Alt + KeyLeft: "Alt + ←" moves the current line left one word.
# Alt + KeyRight: "Alt + →" moves the current line right one word.
# Alt + G: "Alt + G" moves the cursor to a specific line number. When you press "Alt + G", nano will prompt you to enter the line number you want to go to. After entering the line number and pressing "Enter", the cursor will move to that line in the text.
# Example of Alt + G: If you want to go to line 10 in your text, you would press "Alt + G", then type "10" and press "Enter". The cursor will then move to line 10 in the nano editor. 
# Undo and Redo: "Alt + U" is used to undo the last action, and "Alt + E" is used to redo the last undone action. These shortcuts can help you easily revert changes or reapply changes while editing in nano.
# "Ctrl + Shift + C" is used to copy text in nano to Global Clipboard, and "Ctrl + Shift + V" is used to paste text from Global Clipboard. These shortcuts allow you to copy and paste text within the nano editor or between nano and other applications.
# "Ctrl + K" is used to cut the current line of text in nano, and "Ctrl + U" is used to paste the cut line. This allows you to easily move lines of text around within the nano editor.
# Alt + ^ is used to mark text in nano. When you press "Alt + ^", it will start marking text from the current cursor position. You can then use the arrow keys to select the text you want to mark. Once you have marked the desired text, you can use "Ctrl + K" to cut it or "Ctrl + Shift + C" to copy it, and then use "Ctrl + U" or "Ctrl + Shift + V" to paste it elsewhere in the document or in another application.
# Shift + Arrow keys can also be used to select text in nano. For example, "Shift + ↓" will select the text from the current cursor position downwards, "Shift + ↑" will select upwards, "Shift + ←" will select leftwards, and "Shift + →" will select rightwards. Once you have selected the desired text using Shift + Arrow keys, you can use "Ctrl + K" to cut it or "Ctrl + Shift + C" to copy it, and then use "Ctrl + U" or "Ctrl + Shift + V" to paste it elsewhere in the document or in another application. 
# Alt + 6 is used to copy the current line in nano. When you press "Alt + 6", it will copy the entire line of text where the cursor is currently located. You can then use "Ctrl + U" to paste the copied line elsewhere in the document or in another application. This shortcut allows you to quickly duplicate lines of text without having to manually select and copy them.
# Ctrl + W is used to search for text in nano. When you press "Ctrl + W", it will prompt you to enter the text you want to search for. After entering the search term and pressing "Enter", nano will highlight the first occurrence of that text in the document. You can then use "Ctrl + W" again to find the next occurrence of the same text, or you can use "Alt + W" to find the previous occurrence. This allows you to quickly navigate through your document and find specific text.  
# In nano (Linux), the Meta key usually means the Alt key on most keyboards.
# 🔹 On Windows
#     Meta key = Alt
#     So:
#         Alt + W → Search next (forward)
#         Alt + Q → Search previous (backward)
# 🔹 On macOS
#     Meta key = Option (⌥) key
#     So:
#         Option + W → Search next (forward)
#         Option + Q → Search previous (backward)
# ⚠️ If Alt/Option doesn’t work in your terminal, you can press:
#     Esc, then release, then press the letter  (Example: Esc then W works like Meta + W)
# That’s it — Meta = Alt (Windows/Linux) and Option (Mac).
# Regex Search: "Ctrl + \\" is used to perform a regex search in nano. When you press "Ctrl + \\", it will prompt you to enter the regular expression (regex) pattern you want to search for. After entering the regex pattern and pressing "Enter", nano will search for matches of that pattern in the document. You can then use "Ctrl + \\" again to find the next match of the same regex pattern, or you can use "Alt + \\" to find the previous match. This allows you to perform more advanced searches using regular expressions in your document.
# Ctrl + \ is used to perform a regex search in nano. When you press "Ctrl + \\", it will prompt you to enter the regular expression (regex) pattern you want to search for. After entering the regex pattern and pressing "Enter", nano will search for matches of that pattern in the document. You can then use "Ctrl + \\" again to find the next match of the same regex pattern, or you can use "Alt + \\" to find the previous match. This allows you to perform more advanced searches using regular expressions in your document.
# To replace text in nano, you can use the "Ctrl + \\" shortcut to perform a regex search and replace. When you press "Ctrl + \\", it will prompt you to enter the regular expression (regex) pattern you want to search for. After entering the regex pattern and pressing "Enter", it will then prompt you to enter the replacement text. After entering the replacement text and pressing "Enter", nano will replace the first occurrence of the regex pattern with the replacement text. You can then use "Ctrl + \\" again to find and replace the next occurrence of the same regex pattern, or you can use "Alt + \\" to find and replace the previous occurrence. This allows you to efficiently perform search and replace operations using regular expressions in your document.
