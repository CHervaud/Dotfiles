# System configuration

#### What is done by scripts ?
None of this section

### Enable touchpad clicktouch

Launch `Mouse and Touchpad`
![Mouse and touchpad](doc/img/system_mouse-and-touchpad.png)

Select the Touchpad in the devices list
![Touchpad in devices list](doc/img/system_touchpad-in-list.png)

Click on sub section `Touchpad`
![Touchpad sub section](doc/img/system_touchpad-subsection.png)

Check `Tap touchpad to click`
![Touchpad check case](doc/img/system_touchpad-check-case.png)

### Change system theme

Launch `Appearance`
![Appearance](doc/img/system_appearance.png)

Select the theme you want (recommended: `Matcha-dark-sea`)
![Theme selection](doc/img/system_theme.png)

### Create shortcuts

Launch `Keyboard`
![Keyboard](doc/img/system_keyboard.png)

Click on sub section `Application Shortcuts`
![Application shortcuts](doc/img/system_application-shortcuts.png)

Add this shortcuts:

![Add shortcut](doc/img/system_add-shortcut.png)

|Command                 |keys                |
|:-----------------------|:-------------------|
|`terminator`            |Ctrl + Alt + I      |
|`brave`                 |Ctrl + Alt + O      |
|`discord`               |Ctrl + Alt + U      |
|`xfce4-screenshouter -r`|Print               |
|`xfce4-screenshouter -f`|Ctrl + Shift + Print|

### Enable pacman colored output

Open `/etc/pacman.conf`:
```
sudo vim /etc/pacman.conf
```

Uncomment the line `Color`:
![Uncomment color line](doc/img/system_pacman-color.png)

## Next doc

Now it's time to check [brave doc](doc/brave.md)
