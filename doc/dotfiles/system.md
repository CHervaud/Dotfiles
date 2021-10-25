# System configuration

#### What is done by scripts ?

Date synchronization

Background image set

#### What is not done by scripts ?

All the rest

### Enable touchpad clicktouch

Launch `Mouse and Touchpad`

![Mouse and touchpad](img/system_mouse-and-touchpad.png)

Select the Touchpad in the devices list

![Touchpad in devices list](img/system_touchpad-in-list.png)

Click on sub section `Touchpad`

![Touchpad sub section](img/system_touchpad-subsection.png)

Check `Tap touchpad to click`

![Touchpad check case](img/system_touchpad-check-case.png)

### Change system theme

Launch `Appearance`

![Appearance](img/system_appearance.png)

Select the theme you want (recommended: `Matcha-dark-sea`)

![Theme selection](img/system_theme.png)

### Change backgrounds

Right click on the monitor background you want to change

![Right Click Desktop](img/system_right-click-desktop.png)

Change the images source directory

![Change source directory](img/system_change-background-source-directory.png)

![Select background image](img/system_select-background-source-directory.png)

Select the image you want to use as background (one can be found in this repository)

![Select background image](img/system_select-background-image.png)

Select the zoomed style and make sure `Apply to all workspaces` is checked

![Background image options](img/system_background-image-options.png)

### Create shortcuts

Launch `Keyboard`

![Keyboard](img/system_keyboard.png)

Click on sub section `Application Shortcuts`

![Application shortcuts](img/system_application-shortcuts.png)

Add this shortcuts:

![Add shortcut](img/system_add-shortcut.png)

|Command                 |keys                |
|:-----------------------|:-------------------|
|`terminator`            |Ctrl + Alt + I      |
|`brave`                 |Ctrl + Alt + O      |
|`discord`               |Ctrl + Alt + U      |
|`xfce4-screenshouter -r`|Print               |
|`xfce4-screenshouter -f`|Ctrl + Shift + Print|

### Enable pacman colored output

Open `/etc/pacman.conf`:

```bash
sudo vim /etc/pacman.conf
```

Uncomment the line `Color`

![Uncomment color line](img/system_pacman-color.png)

### Enable system date synchronization

Enable system date sync

```bash
timedatectl set_ntp true
```

Restart systemd timesync service

```bash
systemctl restart systemd-timesyncd.service
```

### Add workspaces

Launch `Workspaces`

![Workspaces](img/system_workspaces.png)

Add or remove as many workspaces as you want

![Add workspaces](img/system_add-workspaces.png)

## Next doc

Now it's time to check [brave doc](brave.md)
