# 🧹 WSL Cleanup Guide (Beginner Friendly)

This README explains **how to clean up disk space in WSL (Windows Subsystem for Linux)** step by step.
It is written for **freshers**, with simple explanations of **what each command does and why we use it**.

---

## 📌 Why WSL Cleanup Is Important

WSL stores Linux files in a **virtual disk (VHDX)**. Even after deleting files, the disk **does not shrink automatically**. Over time, this can consume **GBs of space** on your Windows system.

This guide covers:

* Cleaning Linux packages
* Finding large files
* Clearing logs
* Removing unused Docker data
* Shutting down WSL properly
* Compacting the WSL virtual disk

---

## 1️⃣ Clean Linux Packages Inside WSL

Open your WSL terminal (Ubuntu, Debian, etc.) and run:

```bash
sudo apt update
```

🔹 Updates the package list so the system knows which packages are latest.

```bash
sudo apt autoremove -y
```

🔹 Removes **unused dependencies** that were installed automatically but are no longer needed.

```bash
sudo apt autoclean
```

🔹 Deletes old package files that can no longer be downloaded.

```bash
sudo apt clean
```

🔹 Clears **all cached `.deb` package files**.

✅ This step alone can free a lot of space.

---

## 2️⃣ Check Which Files Are Consuming More Storage

### Check disk usage folder-wise (root level)

```bash
du -h --max-depth=1 /
```

🔹 Shows folder sizes in **human-readable format**.

### Check home directory usage

```bash
du -h --max-depth=1 ~
```

🔹 Helps identify large folders like `Downloads`, `.cache`, `node_modules`, etc.

### Check overall disk usage

```bash
df -h
```

🔹 Displays total disk space, used space, and free space.

---

## 3️⃣ Clear System Logs

Logs can grow very large over time.

```bash
sudo journalctl --vacuum-time=7d
```

🔹 Keeps only **last 7 days** of logs.

OR limit logs by size:

```bash
sudo journalctl --vacuum-size=50M
```

🔹 Keeps logs under **50 MB**.

---

## 4️⃣ Remove Unused Docker Data (Very Important)

⚠️ If you use Docker, this step can free **huge space**.

### Remove unused containers, images, and cache

```bash
docker system prune -af
```

🔹 Removes:

* Stopped containers
* Unused images
* Build cache

### Remove unused Docker volumes

```bash
docker volume prune -f
```

🔹 Deletes unused volumes that may contain old data.

---

## 5️⃣ Shutdown WSL Properly

Run this from **Windows PowerShell**:

```powershell
wsl --shutdown
```

🔹 Stops all running WSL instances and releases memory.

This step is **mandatory** before compacting the disk.

---

## 6️⃣ Compact the WSL Virtual Disk (VHDX)

Even after deleting files, WSL disk **does not shrink automatically**.

### Step 1: Locate the WSL disk file

Usually located at:

```
C:\Users\<YourUsername>\AppData\Local\Packages\
```

Ubuntu example:

```
CanonicalGroupLimited.Ubuntu*\LocalState\ext4.vhdx
```

---

### Step 2: Compact the disk

Open **PowerShell as Administrator** and run:

```powershell
diskpart
```

Then execute:

```
select vdisk file="C:\Users\<YourUsername>\AppData\Local\Packages\CanonicalGroupLimited.Ubuntu...\LocalState\ext4.vhdx"
attach vdisk readonly
compact vdisk
detach vdisk
exit
```

🔹 This can free **multiple GBs** of disk space.

---

## 7️⃣ Optional: Remove Unused WSL Distributions

List all installed distros:

```powershell
wsl -l -v
```

Remove unused distro:

```powershell
wsl --unregister <DistroName>
```

⚠️ This permanently deletes the distro.

---

## ✅ Final Cleanup Checklist

✔ Clean Linux packages
✔ Check large files
✔ Clear logs
✔ Prune Docker
✔ Shutdown WSL
✔ Compact VHDX

---

## 🎯 Recommended Frequency

* Light usage: Once a month
* Heavy Docker usage: Every 1–2 weeks

---

Happy coding! 🚀
