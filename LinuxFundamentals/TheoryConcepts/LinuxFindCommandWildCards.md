# 🐧 Linux Wildcards (Glob Patterns) — Beginner's Guide

> **What are wildcards?**
> Wildcards are special characters that act as placeholders when you're searching for files. Instead of typing an exact filename, you use symbols like `*` or `?` to match multiple files at once.

---

## 📌 Table of Contents

1. [How Wildcards Work](#how-wildcards-work)
2. [The 5 Wildcard Patterns](#the-5-wildcard-patterns)
   - [`*` — Asterisk (Match Anything)](#1--asterisk--match-anything)
   - [`?` — Question Mark (Match One Character)](#2--question-mark--match-one-character)
   - [`[abc]` — Character Set (Match One from a List)](#3-abc--character-set--match-one-from-a-list)
   - [`[a-z]` — Character Range (Match One in a Range)](#4-a-z--character-range--match-one-in-a-range)
   - [`[!abc]` — Negation (Match Anything Except)](#5-abc--negation--match-anything-except)
3. [Combining Wildcards](#combining-wildcards)
4. [Case Sensitivity: `-name` vs `-iname`](#case-sensitivity--name-vs--iname)
5. [⚠️ Important Rule: Always Quote Your Wildcards](#️-important-rule-always-quote-your-wildcards)
6. [Real-World Examples Cheat Sheet](#real-world-examples-cheat-sheet)
7. [Quick Memory Trick](#quick-memory-trick)
8. [Interview Q&A](#interview-qa)

---

## How Wildcards Work

Wildcards are most commonly used with the `find` command, but also work with `ls`, `cp`, `mv`, and `rm`.

```bash
# Basic syntax of find
find <where to search> -name "<pattern>"

# Example: Find all .txt files starting from current directory
find . -name "*.txt"
```

The `.` means "start searching from here (current directory)."

---

## The 5 Wildcard Patterns

---

### 1. `*` Asterisk — Match Anything

> **Matches: zero or more characters**
> Think of `*` as "I don't care what's here — it can be anything."

```bash
find . -name "*.txt"
```

| Filename       | Match? |
|----------------|--------|
| `notes.txt`    | ✅ Yes |
| `report.txt`   | ✅ Yes |
| `abc.txt`      | ✅ Yes |
| `report.pdf`   | ❌ No  |
| `.txt`         | ✅ Yes (zero chars before `.txt`) |

```bash
find . -name "test*"       # Files starting with "test"
find . -name "*.java"      # Files ending with ".java"
find . -name "*log*"       # Files with "log" anywhere in the name
```

---

### 2. `?` Question Mark — Match One Character

> **Matches: exactly one character**
> Think of `?` as "there must be exactly one character here — but I don't care which."

```bash
find . -name "file?.txt"
```

| Filename      | Match? |
|---------------|--------|
| `file1.txt`   | ✅ Yes |
| `fileA.txt`   | ✅ Yes |
| `fileX.txt`   | ✅ Yes |
| `file10.txt`  | ❌ No (two chars after "file") |
| `file.txt`    | ❌ No (zero chars after "file") |

```bash
find . -name "?.txt"       # Only single-char filenames like a.txt, b.txt
find . -name "???.txt"     # Exactly 3-char names like abc.txt, xyz.txt
```

---

### 3. `[abc]` Character Set — Match One from a List

> **Matches: exactly one character from inside the brackets**
> Think of `[abc]` as "it must be one of these specific characters."

```bash
find . -name "file[123].txt"
```

| Filename    | Match? |
|-------------|--------|
| `file1.txt` | ✅ Yes |
| `file2.txt` | ✅ Yes |
| `file3.txt` | ✅ Yes |
| `file4.txt` | ❌ No  |
| `fileA.txt` | ❌ No  |

```bash
find . -name "test[abc].txt"   # Matches testa.txt, testb.txt, testc.txt
```

---

### 4. `[a-z]` Character Range — Match One in a Range

> **Matches: exactly one character that falls within the range**
> A shorthand so you don't have to type every character individually.

```bash
find . -name "file[a-z].txt"   # One lowercase letter
find . -name "file[0-9].txt"   # One digit
find . -name "file[A-Z].txt"   # One uppercase letter
```

| Pattern      | Matches                                          |
|--------------|--------------------------------------------------|
| `[a-z]`      | Any single lowercase letter (a, b, c ... z)      |
| `[A-Z]`      | Any single uppercase letter (A, B, C ... Z)      |
| `[0-9]`      | Any single digit (0, 1, 2 ... 9)                 |
| `[a-zA-Z]`   | Any single letter (upper or lower)               |

---

### 5. `[!abc]` Negation — Match Anything Except

> **Matches: any character NOT listed inside the brackets**
> The `!` means "exclude these characters."

```bash
find . -name "file[!0-9].txt"
```

| Filename    | Match? |
|-------------|--------|
| `filea.txt` | ✅ Yes |
| `filex.txt` | ✅ Yes |
| `file1.txt` | ❌ No  |
| `file5.txt` | ❌ No  |

```bash
find . -name "[!A-Z]*"     # Files NOT beginning with an uppercase letter
```

---

## Combining Wildcards

You can mix and match any of the above patterns together.

```bash
find . -name "test[0-9]?.txt"
```

Breaking it down:
- `test`     → literal text
- `[0-9]`   → one digit
- `?`        → one more character (any)
- `.txt`     → file extension

| Filename      | Match? |
|---------------|--------|
| `test1a.txt`  | ✅ Yes |
| `test9x.txt`  | ✅ Yes |
| `test11.txt`  | ❌ No (two digits, not one + one char) |

```bash
find . -name "*report[0-9].pdf"
# Matches: monthlyreport1.pdf, annualreport9.pdf
```

---

## Case Sensitivity: `-name` vs `-iname`

By default, Linux filenames are **case-sensitive** — `file.txt` and `FILE.TXT` are different files.

| Flag      | Behavior          | Example match                        |
|-----------|-------------------|--------------------------------------|
| `-name`   | Case-sensitive    | `*.txt` matches only `file.txt`      |
| `-iname`  | Case-insensitive  | `*.txt` matches `file.txt`, `FILE.TXT`, `File.Txt` |

```bash
find . -name "*.txt"    # Only lowercase .txt
find . -iname "*.txt"   # Any case: .txt, .TXT, .Txt
```

---

## ⚠️ Important Rule: Always Quote Your Wildcards

This is one of the most common beginner mistakes.

```bash
# ✅ CORRECT — pattern is passed to find
find . -name "*.txt"

# ❌ WRONG — shell expands *.txt BEFORE find runs
find . -name *.txt
```

**Why?** Without quotes, your shell (bash/zsh) sees `*.txt` and replaces it with all matching filenames in the current directory *before* passing anything to `find`. This means `find` never receives the wildcard — it receives a list of actual filenames instead.

**Golden rule: Always wrap wildcard patterns in double quotes `"..."` when using `find`.**

---

## Real-World Examples Cheat Sheet

```bash
# Find all Java source files
find . -name "*.java"

# Find all log files under /var/log
find /var/log -name "*.log"

# Find all shell scripts
find . -name "*.sh"

# Find files whose name starts with "test"
find . -name "test*"

# Find files whose name ends with a digit
find . -name "*[0-9]"

# Find files with exactly 3 characters before .txt
find . -name "???.txt"

# Find files starting with an uppercase letter
find . -name "[A-Z]*"

# Find files starting with a lowercase letter
find . -name "[a-z]*"

# Find all files regardless of .txt case (e.g. .TXT, .Txt)
find . -iname "*.txt"
```

---

## Quick Memory Trick

| Pattern   | Meaning                          | Easy Way to Remember           |
|-----------|----------------------------------|--------------------------------|
| `*`       | Zero or more characters          | **"Anything goes"**            |
| `?`       | Exactly one character            | **"One mystery character"**    |
| `[abc]`   | One character from the list      | **"Pick one from the menu"**   |
| `[a-z]`   | One character in the range       | **"Somewhere in the alphabet"**|
| `[!abc]`  | Any character except listed ones | **"Not these!"**               |

Master these 5 patterns and you'll understand 95% of wildcard usage in Linux.

---

## Interview Q&A

**Q1: What is the difference between `*` and `?`?**

`*` matches zero or more characters — it can replace any number of characters, including none. `?` matches exactly one character — it must represent precisely one character, no more, no less.

**Q2: Why should you always put quotes around wildcard patterns in `find`?**

Without quotes, the shell expands the wildcard before `find` even runs. For example, `*.txt` gets replaced with actual `.txt` filenames in your current directory, so `find` never processes the pattern itself. Quoting prevents this shell expansion.

**Q3: What is the difference between `-name` and `-iname`?**

`-name` performs a case-sensitive search, so `*.txt` won't match `FILE.TXT`. `-iname` performs a case-insensitive search, so `*.txt` will match `file.txt`, `FILE.TXT`, and `File.Txt`.

**Q4: How do you match files that do NOT start with a digit?**

```bash
find . -name "[!0-9]*"
```

**Q5: What does `find . -name "???.txt"` match?**

It matches any `.txt` file whose base name is exactly 3 characters long — for example, `abc.txt`, `xyz.txt`, `123.txt`. It will NOT match `ab.txt` (too short) or `abcd.txt` (too long).

---

*Happy searching! 🚀*