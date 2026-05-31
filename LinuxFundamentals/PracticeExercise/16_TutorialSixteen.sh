#!/bin/bash

# ==============================================================================
# LINUX TERMINAL SHORTCUTS: BOOST YOUR PRODUCTIVITY
# ==============================================================================

# ------------------------------------------------------------------------------
# COMMAND LINE NAVIGATION
# ------------------------------------------------------------------------------

# Ctrl + A
# Move cursor to beginning of current line
# Example:
# $ echo Hello World
# Cursor at end -> Ctrl+A -> Cursor moves before 'e'

# Ctrl + E
# Move cursor to end of current line

# Alt + B
# Move backward one word
# Example:
# $ cd /home/user/documents/projects

# Alt + F
# Move forward one word

# Ctrl + XX
# Toggle cursor between current position and beginning of line

# ------------------------------------------------------------------------------
# TEXT EDITING
# ------------------------------------------------------------------------------

# Ctrl + U
# Cut/Delete from cursor to beginning of line
# Example:
# $ very-long-command
#            ^
# Ctrl+U removes text before cursor

# Ctrl + K
# Cut/Delete from cursor to end of line

# Ctrl + W
# Delete previous word

# Alt + D
# Delete next word

# Ctrl + H
# Delete previous character
# Same as Backspace

# Ctrl + D
# Delete character under cursor

# Ctrl + Y
# Paste last deleted text

# Alt + T
# Swap current word with previous word

# Ctrl + T
# Swap current character with previous character

# ------------------------------------------------------------------------------
# COMMAND HISTORY
# ------------------------------------------------------------------------------

# Ctrl + P
# Previous command
# Same as Up Arrow

# Ctrl + N
# Next command
# Same as Down Arrow

# Ctrl + R
# Reverse search command history
# Example:
# Ctrl+R -> type "git"
# Finds previous git commands

# Ctrl + G
# Exit history search

# !! 
# Execute previous command
# Example:
# $ ls
# $ !!

# !n
# Execute command number n
# Example:
# $ !120

# !string
# Execute most recent command starting with string
# Example:
# $ !git

# history
# Display command history

# ------------------------------------------------------------------------------
# PROCESS CONTROL
# ------------------------------------------------------------------------------

# Ctrl + C
# Terminate current process
# Example:
# Running script -> Ctrl+C

# Ctrl + Z
# Suspend current process

# bg
# Resume suspended process in background

# fg
# Bring background process to foreground

# jobs
# List background jobs

# kill PID
# Kill process by PID

# kill %1
# Kill job number 1

# ------------------------------------------------------------------------------
# SCREEN CONTROL
# ------------------------------------------------------------------------------

# Ctrl + L
# Clear terminal screen
# Same as 'clear'

# clear
# Clear terminal screen

# reset
# Reset broken terminal

# ------------------------------------------------------------------------------
# TAB COMPLETION
# ------------------------------------------------------------------------------

# Tab
# Auto-complete file, directory, or command

# Double Tab
# Show available completions

# Example:
# $ cd Doc<TAB>

# ------------------------------------------------------------------------------
# TERMINAL SESSION CONTROL
# ------------------------------------------------------------------------------

# Ctrl + D
# Logout / Exit shell
# Example:
# $ exit
# Same effect

# exit
# Close current shell

# logout
# Logout from login shell

# ------------------------------------------------------------------------------
# COPY / PASTE (TERMINAL)
# ------------------------------------------------------------------------------

# Ctrl + Shift + C
# Copy selected text

# Ctrl + Shift + V
# Paste copied text

# Shift + Insert
# Paste clipboard contents

# ------------------------------------------------------------------------------
# WORD CASE MODIFICATION
# ------------------------------------------------------------------------------

# Alt + U
# Convert word to uppercase

# Alt + L
# Convert word to lowercase

# Alt + C
# Capitalize first letter

# ------------------------------------------------------------------------------
# BASH SPECIFIC SHORTCUTS
# ------------------------------------------------------------------------------

# Ctrl + _
# Undo last editing action

# Alt + .
# Insert last argument from previous command

# Example:
# $ mkdir TestFolder
# $ cd Alt+.
# Expands to:
# $ cd TestFolder

# ------------------------------------------------------------------------------
# MULTIPLE TERMINAL MANAGEMENT
# ------------------------------------------------------------------------------

# Ctrl + Alt + T
# Open new terminal window (Ubuntu)

# Ctrl + Shift + T
# Open new terminal tab

# Ctrl + PageUp
# Previous tab

# Ctrl + PageDown
# Next tab

# ------------------------------------------------------------------------------
# TMUX SHORTCUTS (IF USING TMUX)
# ------------------------------------------------------------------------------

# Ctrl + B, C
# Create new window

# Ctrl + B, N
# Next window

# Ctrl + B, P
# Previous window

# Ctrl + B, %
# Split vertically

# Ctrl + B, "
# Split horizontally

# ------------------------------------------------------------------------------
# SCREEN SHORTCUTS (GNU SCREEN)
# ------------------------------------------------------------------------------

# Ctrl + A, C
# Create new screen

# Ctrl + A, N
# Next screen

# Ctrl + A, P
# Previous screen

# Ctrl + A, D
# Detach session

# ------------------------------------------------------------------------------
# USEFUL PRODUCTIVITY COMMANDS
# ------------------------------------------------------------------------------

# pwd
# Print current directory

# whoami
# Display current user

# hostname
# Show system hostname

# date
# Display current date and time

# uptime
# Show system uptime

# top
# Monitor running processes

# htop
# Advanced process monitor

# ------------------------------------------------------------------------------
# PRO TIPS
# ------------------------------------------------------------------------------

# 1. Use Ctrl+R frequently to search command history.
# 2. Use Tab completion to avoid typing long paths.
# 3. Use Ctrl+A and Ctrl+E for quick navigation.
# 4. Use Ctrl+U and Ctrl+K for fast line editing.
# 5. Use Alt+. to reuse the last argument.
# 6. Learn tmux for advanced terminal productivity.

echo "Linux Terminal Shortcuts Reference Loaded!"