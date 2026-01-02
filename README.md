
## 🔎 b0d0rk — Google Dorking Automation for Bug Bounty Recon

**b0d0rk** is a lightweight reconnaissance tool designed to help **bug bounty hunters and security researchers** automate Google dork queries during the **passive information-gathering phase**.
It focuses on identifying **publicly indexed, potentially sensitive endpoints** such as exposed files, admin panels, backup files, configuration leaks, and security policy pages — strictly using search engine results.

The tool is fast, scriptable, and Bash-friendly, making it ideal for early-stage recon workflows.

---

### ✨ Features

* Automated execution of Google dorks
* Target-based searching (`site:target.com`)
* Supports custom dork lists
* Clean, readable output
* Bash-compatible & lightweight
* Designed for **authorized bug bounty programs only**

---

### 🎯 Use Cases

* Bug bounty reconnaissance
* Security research
* Finding exposed files & endpoints
* Locating bug bounty / disclosure pages
* Passive OSINT collection

---

## 📦 Installation

### 1️⃣ Clone the repository

```bash
git clone https://github.com/b0dj0x/b0d0rk.git
cd b0d0rk
```

### 2️⃣ Give execute permission

```bash
chmod +x b0d0rk.sh
```

> No heavy dependencies required — works with standard Linux tools (`bash`, `curl`).

---

## 🚀 Usage

```bash
./b0d0rk.sh 
```

The tool automatically converts these into:

```
site:example.com inurl:admin
site:example.com ext:env
```

---


## ⚠️ Legal Disclaimer

`b0d0rk` is intended **only for educational purposes and authorized testing**.
Use **only** on domains you own or that are **explicitly in scope** of a bug bounty or penetration testing program.
The author is **not responsible for misuse**.

---
