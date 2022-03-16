# Installation

- Provision smallest linux VM
- Copy /vanity folder to /vanity on the target machine
- Copy vanity.service to /etc/systemd/system
- sudo systemctl start vanity

# Useful Commands

- sudo journalctl -u vanity
- sudo journalctl -u vanity -f
- sudo systemctl status vanity
- sudo systemctl start vanity
- sudo systemctl stop vanity
- sudo systemctl restart vanity

# Issues

There was an issue with the go-import-redirector's integration with Lets Encrypt.  It uses this to dynamically request a TLS certificate.
The issue was caused by dependency on old version of autocert (which does the integration), which was using old letsencrypt v1 url.
Updating to the latest version of go crypto library fixed this.
