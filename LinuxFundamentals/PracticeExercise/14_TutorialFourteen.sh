# 'grep' command in Linux 
# Basic syntax of 'grep' command is : grep "Pattern Which You Want To Search" file_name
grep "happiness" meditation

# We can also specify the file extension like .txt, .log, etc. 
grep "happiness" meditation.txt

# Searches for "happiness" ignoring UPPER/lowercase — so it matches "Happiness", "HAPPINESS", "happiness" all at once
grep -i "happiness" meditation.txt

# Searches for "happiness" and shows the LINE NUMBER before each result — helpful to locate where in the file it appears
grep -n "happiness" meditation.txt

# Instead of showing the lines, it just COUNTS how many lines contain "happiness" and prints a number
grep -c "happiness" meditation.txt

# Shows all lines that DO NOT contain "happiness" — think of -v as "everything EXCEPT this"
grep -v "happiness" meditation.txt

# Goes INSIDE every folder and subfolder of /some/directory/ and searches for "happiness" in ALL files found
grep -r "happiness" /some/directory/

# Searches for lines containing EITHER "happiness" OR "joy" — the | symbol means OR in regex patterns
grep -E "happiness|joy" meditation.txt

# Counts how many lines have the whole word "Life" (ignores case, skips words like "lifestyle") — prints just a number, not the actual lines
grep -iwc "Life" meditation

# Searches for the whole word "life" (ignores case, skips "lifestyle"/"lifelong") — prints the actual matching lines from meditation.log
grep -iw "life" meditation.log

# Searches for "tomato" (ignores case) and also prints 2 lines BEFORE each match — useful to see what comes before the result
grep "tomato" food.txt -iB2

# Searches for "tomato" (ignores case) and prints 2 lines BEFORE and 3 lines AFTER each match — gives full surrounding context of the result
grep "tomato" food.txt -iB2 -A3
: '
    line 1  ← -B2 (2 lines Before)
    line 2  ← -B2 (2 lines Before)
    line 3  ← MATCH LINE (contains "tomato")
    line 4  ← -A3 (3 lines After)
    line 5  ← -A3 (3 lines After)
    line 6  ← -A3 (3 lines After)
'
# Searches for "tomato" (ignores case) and prints 2 lines BEFORE and 2 lines AFTER each match — C stands for Context, equal lines on both sides
grep "tomato" food.txt -iC2

# Searches for lines that START WITH the word "In" (ignores case, whole word only) — ^ means beginning of the line
grep "^In" -iw sample.txt

# Watches app.log file LIVE in real time and instantly shows only the lines containing "ERROR" as they appear — like a live filter
tail -f app.log | grep "ERROR"

# Watches app.log file LIVE in real time and shows "ERROR" lines along with 10 lines BEFORE and AFTER each error — gives full context of what caused the error
tail -f app.log | grep "ERROR" -C10