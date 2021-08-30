# Git configuration

#### What is done by scripts ?
Local git configuration

New ssh key generation

[Scripts doc](doc/scripts.md)
#### What is not done by scripts ?
Github and gitlab ssh key linkage

### Configure git

Configure commit profile name:
```
git config --global user.name "Corentin Hervaud"
```

Configure commit profile mail:
```
git config --global user.email "corentin.hervaud@epitech.eu"
```

### Create ssh key

Generate a new ssh key (you can change the `-C`):
```
ssh-keygen -t ed25519 -C "chervaud@hp_manjaro"
```

Add ssh key to ssh-agent:
```
ssh-add ~/.ssh/id_ed25519
```

### Add ssh key on github

Go to [github ssh keys](https://github.com/settings/keys)

Click `New SSH key`
![New ssh key](doc/img/git_github_new-ssh-key.png)

Set a title, example: 'HP Laptop Manjaro'
![Set title](doc/img/git_github_set-title.png)

Copy your ssh public key located at: `~/.ssh/id_ed25519.pub`

Click `Add SSH Key`
![Add ssh key](doc/img/git_github_add-ssh-key.png)

Click `Enable SSO` and follow the instructions
This enable epitech connection to your github account
![Enable SSO](doc/img/git_github_enable-sso.png)

### Add ssh key on gitlab

Go to [gitlab ssh keys](https://gitlab.com/-/profile/keys)

Copy your ssh public key located at: `~/.ssh/id_ed25519.pub`

Set a title, example: 'HP Laptop Manjaro'
![Set title](doc/img/git_gitlab_set-title.png)

Add an expiration date if you want (no one means no expiration date)
![Expiration date](doc/img/git_gitlab_expiration-date.png)

Click `Add Key`
![Add key](doc/img/git_gitlab_add-key.png)

## Next doc

Now it's time to check [docker doc](doc/docker.md)
