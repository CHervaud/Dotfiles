# Gestures configuration

#### What is done by scripts ?
Setup of the service

[Scripts doc](doc/scripts.md)
#### What is not done by scripts ?
Create shortcuts

### Setup service

Add user to input group:
```
sudo gpasswd -a $USER input
```

Setup systemd service:
```
libinput-gestures-setup service
```

Enable service autostart:
```
libinput-gestures-setup autostart
```

Start service:
```
libinput-gestures-setup start
```

### Create shortcuts

Launch `Gestures`
![Launch Gestures](doc/img/gestures_launch.png)

Add new gesture:
![New gesture](doc/img/gestures_add-new.png)

Then add this shortcuts with `Swipe`, `Three fingers`:
- Up: `xdotool key Ctrl+Alt+Up`
- Down: `xdotool key Ctrl+Alt+Down`
- Left: `xdotool key Ctrl+Alt+Left`
- Right: `xdotool key Ctrl+Alt+Right`

Reboot:
```
reboot now
```

## Next doc

Now it's time to check [discord doc](doc/discord.md)
