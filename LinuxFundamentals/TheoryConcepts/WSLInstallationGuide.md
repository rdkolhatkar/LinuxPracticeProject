# 🐧 WSL Installation Guide (Beginner Friendly)

This README explains **how to install WSL (Windows Subsystem for Linux)** step by step on **Windows**.
It also explains **what to do if you are using macOS or Linux**, where WSL is not required.

This guide is written for **freshers**, with simple language and clear steps.

---

## 📌 What is WSL?

WSL (Windows Subsystem for Linux) allows you to **run a real Linux environment directly on Windows** without using a heavy virtual machine.

With WSL, you can:

* Use Linux commands (`ls`, `grep`, `awk`, etc.)
* Run tools like Git, Docker, Java, Node.js
* Practice Linux for interviews
* Do DevOps and automation work

---

## 🖥️ WSL Installation on Windows (Recommended Way)

### ✅ Prerequisites

* Windows 10 (version 2004+) or Windows 11
* Administrator access
* Internet connection

---

## 1️⃣ Enable WSL Using Single Command (Easiest Method)

Open **PowerShell as Administrator** and run:

```powershell
wsl --install
```

🔹 This command will:

* Enable WSL
* Enable Virtual Machine Platform
* Install WSL 2
* Install Ubuntu (default distro)

🟢 Restart your system when prompted.

---

## 2️⃣ Verify WSL Installation

After restart, open PowerShell and run:

```powershell
wsl --status
```

Expected output:

* Default Version: WSL 2

Check installed distros:

```powershell
wsl -l -v
```

---

## 3️⃣ Launch Ubuntu

You can start Ubuntu by:

* Searching **Ubuntu** in Start Menu
  OR

```powershell
wsl
```

On first launch:

* Set Linux username
* Set password

🎉 Your Linux environment is ready!

---

## 4️⃣ Update Linux Packages (First Thing to Do)

Inside Ubuntu terminal:

```bash
sudo apt update
sudo apt upgrade -y
```

🔹 Ensures system packages are up to date.

---

## 5️⃣ Set WSL 2 as Default (If Needed)

```powershell
wsl --set-default-version 2
```

---

## 6️⃣ Install Additional Linux Distributions (Optional)

List available distros:

```powershell
wsl --list --online
```

Install a specific distro:

```powershell
wsl --install -d Ubuntu-22.04
```

---

## 🧹 Recommended Post-Installation Steps

* Install Git
* Install Docker Desktop (WSL integration)
* Configure VS Code with WSL extension

---

## 🍎 What If You Are Using macOS?

WSL is **Windows-only**.

### On macOS, you already have:

* A Unix-based terminal
* Bash/Zsh shell
* Native support for Linux commands

### Recommended setup on macOS:

Install Homebrew (package manager):

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Install common tools:

```bash
brew install git node docker
```

🔹 No need for WSL on macOS.

---

## 🐧 What If You Are Using Linux?

If you are already on Linux:

* You do NOT need WSL
* You are already using a native Linux OS

Simply use your terminal:

```bash
sudo apt update
```

Popular Linux distros:

* Ubuntu
* Fedora
* Debian
* Arch Linux

---

## ⚠️ Common Beginner Mistakes

❌ Not restarting after WSL install
❌ Using WSL 1 instead of WSL 2
❌ Filling disk space without cleanup
❌ Forgetting to shutdown WSL before compaction

---

## ✅ Quick Verification Checklist

✔ WSL installed
✔ Ubuntu launched
✔ WSL version = 2
✔ Linux commands working

---

## 🎯 When to Use WSL

* Linux practice
* Automation testing
* DevOps learning
* Docker & Kubernetes
* Interview preparation

---

Happy learning & happy hacking 🚀
