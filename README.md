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
#
