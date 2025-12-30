# HSX

HTTP Status Code Splitter
hsx is a lightweight Bash utility designed to split URLs into separate files based on HTTP status codes.

It is primarily intended to be used **after `httpx`** when status code output is enabled, making large-scale recon output easier to organize and analyze.

---

## Features

- Parses `httpx` output with status codes  
- Supports file input and stdin  
- Automatically groups URLs by HTTP status code  
- Creates per-status output files  
- Simple, dependency-free Bash implementation  

---

## Requirements

- bash  
- awk  
- httpx (recommended)

---

## Before Usage

Run `httpx` with status codes enabled:
```bash
httpx -sc -nc -o result.txt
```
## Usage 
```bash
hsx result.txt
```
Or use stdin (recommended):
```bash
httpx -sc -nc | hsx
```
## Input Format
Expected input format (default httpx -sc -nc output):
```bash 
https://example.com [200]
https://admin.example.com [403]
```
## Output
hsx creates a directory named status_codes/ and writes URLs into files based on their HTTP status code:
```bash
status_codes/
├── status_200.txt
├── status_301.txt
├── status_403.txt
├── status_500.txt
└── ...
```
## Installation
```bash
git clone https://github.com/USERNAME/hsx.git
cd hsx
source hsx.sh
```
(Optional) Make it executable:
```bash 
chmod +x hsx.sh
```
## How It Works

hsx reads each line of input, extracts the URL and any HTTP status code in the form [XYZ], and appends the URL to a file named after that status code.

This allows fast filtering and prioritization during reconnaissance and vulnerability assessment workflows.

##Disclaimer
This tool is intended for authorized security testing and educational purposes only.
Do not use it against systems you do not own or have explicit permission to test.
# Author 
SIMON
