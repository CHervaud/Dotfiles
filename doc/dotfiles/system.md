# System configuration

#### What is done by scripts ?

Date synchronization

Desktop icons hiding

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

### Hide desktop icons

Right click on the monitor background you want to change

![Right Click Desktop](img/system_right-click-desktop.png)

Click on sub section `Icons`

![Icons sub section](img/system_icons-subsection.png)

Click on `Icon type` select button

![Icon type button](img/system_icon-type-button.png)

Select `None`

![Icon type none](img/system_icon-type-none.png)

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
|`xfce4-screenshooter -r`|Print               |
|`xfce4-screenshooter -f`|Ctrl + Shift + Print|

### Enable pacman colored output

Open `/etc/pacman.conf`:

```bash
sudo vim /etc/pacman.conf
```

Uncomment the line `Color`

![Uncomment color line](img/system_pacman-color.png)

### Config paru

Open `/etc/paru.conf`:

```bash
sudo vim /etc/paru.conf
```

Uncomment the line `BottomUp`

Uncomment the line `Sudoloop`

Uncomment the line `UseAsk`

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

### Change theme

Install your theme(example: `la-capitaine`)

```bash
paru la-capitaine
```

Change it in your settings

Launch `Appearance`

![Appearance](img/system_appearance.png)

Click on `Icons` subtab

![Icons subtab selection](img/system_icon-subtab.png)

Select `La Capitaine`

![Icons theme selection](img/system_icon-theme-selection.png)

### Install plank TabBar

Plank is a nice tabbar

Install Plank

```bash
paru plank
```

Add it in the autostart applications

Launch `Session and Startup`

![Session and Startup](img/system_session-and-startup.png)

Click on `Application Autostart`

![Application Autostart](img/system_application-autostart.png)

Click on the 'Plus'

![Add autostart application](img/system_add-application-autostart.png)

Fill like following

![Fill application autostart](img/system_add-application-autostart-fill.png)

Disable dock windows shadows

Launch `Window Manager Tweaks`

![Window Manager Tweaks](img/system_window-manager-tweaks.png)

Click on `Compositor` subtab

![Compositor subtab](img/system_compositor-subtab.png)

Uncheck `Show shadows under dock windows`

![Uncheck shadows](img/system_uncheck-shadows.png)

### Custom panel bar

Move panel bar to the top

Open panel bar preferences by rightclikcing it

![Panel preferences](img/system_panel-preferences.png)

Click on `Items` subtab

![Items subtab](img/system_items-subtab.png)

Organize items as following

![Items list](img/system_panel-items.png)

## Next doc

Now it's time to check [brave doc](brave.md)
