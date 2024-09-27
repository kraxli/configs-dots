# configs-dots

My linuxmint / ubuntu configuration (configs) and dot-files / directories


# Initilizaiton

Create repo in my account at `https://github.com/kraxli?tab=repositories`.

```sh
git init
git remote add origin https://github.com/kraxli/configs-dots.git
git pull origin main
git branch --set-upstream-to=origin/main main
```

Change `.gitignore` to exlude everything but a few files and directories (see [here](https://git-scm.com/docs/gitignore.html#_examples)):

```git
/*
!.zshrc
!.config
.config/*
!.config/Code
```
