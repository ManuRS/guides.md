# SSH server basic config

Edit:
```
cd /etc/ssh
sudo vi sshd_config
```

And add:
```
Port xxxx
AllowUsers name
```

Restart:
```
systemctl restart sshd.service
```
