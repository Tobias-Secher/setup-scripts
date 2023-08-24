## Startup
1. Execute `chmod a+x keyboard-startup.sh` if script cannot be executed.
2. Create a new new startup Systemd File in `/etc/systemd/system`, using this command: `sudo nano /etc/systemd/system/ScriptService.service`
3. Set permission: `chmod 644 /etc/systemd/system/ScriptService.service`
4. Enable service: `systemctl enable ScriptService.service`