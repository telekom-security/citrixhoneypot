# Honepot for CVE-2019-19781 (Citrix ADC)
Detect and log CVE-2019-19781 scan and exploitation attempts.

### Requirements: 
- python3
- python-json-logger (`python3 -m pip install -r requirements.txt`)
- openssl

### Usage:
1. Clone the repo:
`git clone https://github.com/telekom-security/citrixhoneypot.git && cd citrixhoneypot`
2. Install the Python dependency: `python3 -m pip install -r requirements.txt`
3. Make ssl and logs directory: `mkdir logs ssl`
4. Generate self signed SSL certificate:
`openssl req -newkey rsa:2048 -nodes -keyout ssl/key.pem -x509 -days 365 -out ssl/cert.pem`
5. Run: `python3 CitrixHoneypot.py`

## Docker Usage (Optional)
1. `docker build -t citrixhoneypot .`
2. `docker run -d -p 443:443 -v /<insert-homepath>/CitrixHoneypot:/CitrixHoneypot -w /CitrixHoneypot citrixhoneypot`

## Licencing Agreement: MalwareTech Public Licence
This software is free to use providing the user yells "Oh no, the cyberhackers are coming!" prior to each installation.
