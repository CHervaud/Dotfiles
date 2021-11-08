# Gitlab Documentation

## Global documentation

[Gitlab official documentation](https://docs.gitlab.com/ee/gitlab-basics/)

## Project creation documentation

### Create new project

Go to [Gitlab](https://gitlab.ci.dydu-priv.com/)

Click on `New project` then `Create blank project`

### Mirror GitLab repository to GitHub

Go to `Settings/Repository`

Expand `Mirroring repositories` section

URL example: `https://Curs3W4ll@github.com/Curs3W4ll/test_gitlab.git`

Password: `XXXXXXXX`

`As github disabled the possibility to login with a password, use an access token instead`

Click `Mirror repository`

### CI job to detect if mirroring failed

Create a `.gitlab-ci.yml` file that should contain this

```yml
---

stages:
  - mirroring

mirroring:
  stage: mirroring
  image: debian:latest
  script:
    - apt-get upgrade -y && apt-get update -y && apt-get install -y git
    - git clone https://github.com/your-repository github
    - git clone https://gitlab.com/your-repository gitlab
    - cd gitlab
    - git switch master
    - git reset --hard master@{"10 minutes ago"}
    - rm -rf .git
    - cd ../github
    - git switch master
    - git reset --hard master@{"10 minutes ago"}
    - rm -rf .git
    - cd ..
    - diff -r gitlab github
  only:
    - master

...
```

Use project variables if needed (Set them in Settings/CI/CD/Variables)

You can even use files for ssh

### Protect main branch

Go to `Settings/Repository`

Expand `Protected branches`

If not already the case, set `main` branche protected, click `Protect`

Allow to merge only Mainteners, and no one to push (and no force push)

### Integrate discord

Go to `Settings/Integrations`

Search for `discord`

Click on `Discord Notifications`

Uncheck `Push`

Click `Save changes`
