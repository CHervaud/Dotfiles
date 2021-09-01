Setup GitLab project:
    Create the GitLab project
    Mirror GitLab repository to GitHub:
        Go to 'Settings/Repository'
        Expand 'Mirroring repositories' section
        URL example: 'https://XXXXXXXX@github.com/Curs3W4ll/test_gtilab.git'
        Password: 'XXXXXXXX'
        Check 'Keep divergents refs'
        Check 'Mirror only protected branches'
        Click 'Mirror repository'
    Protect main branche:
        Go to 'Settings/Repository'
        Expand 'Protected branches'
        If not already the case, set 'main' branche protected, click 'Protect'
        Allow to merge only Mainteners, and no one to push (and no force push)
    Integrate discord:
        Go to 'Settings/Integrations'
        Search for 'discord'
        Click on 'Discord Notifications'
        Uncheck 'Push'
        Click 'Save changes'
