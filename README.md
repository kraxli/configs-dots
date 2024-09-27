# configs-dots

My linuxmint / ubuntu configuration (configs) and dot-files / directories


# Initialization

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


# Git tricks

## How to clone

```bash
cd ~
git init
git config credential.helper store

git remote add origin https://github.com/kraxli/home_dave
git fetch
git checkout origin/master -ft

git submodule update --init --recursive
mv .git .git_temp # to avoid slowing e.g. defx down (which looks for directories containing .git files to be defined as roots)
```

or a bit safer

```bash
cd ~
git clone https://github.com/kraxli/home_dave .local_config
git config credential.helper store

ln -s .local_config/folder_abc .
ln -s .local_config/file_xyz .
...
```

## Git Pull with sub-module / Update repo including sub-repos
```
git submodule foreach git pull origin master
```

### Other way which may not pull master of the sub-modules
For the first time we can pull all sub-modules using

```
git submodule update --init --recursive
```
for the first time. All sub-modules will be pulled down locally.

To update sub-modules, we can use
```
git submodule update --recursive --remote
```
or simply
```
git pull --recurse-submodules
```

## Other Tricks / Tips

I use `.git` directories to identify projects. Having a `.git` in a root-directory can mess up this work flow / project setup. Therefore, I temporarily "switch off" git for the `/home/dave` \ `~` directory:
```sh
mv .git .git_off
```
and for updates, pulls, pushes
```sh
mv .git_off .git
```

## Appendix

### Initialization - Adding sub-modules
```
cd ~
git submodule add  https://github.com/kraxli/.config.git .config
git submodule add https://github.com/ohmyzsh/ohmyzsh.git .oh-my-zsh
git clone https://github.com/pianocomposer321/project-template-samples.git .templates
rm templates/.git README.md -rf
cd templates
mv C++\ Hello,\ World Cpp
```

### Some notes working with submodules

```
# Clone the .config repo
cd ~
git clone --recursive git://github.com/kraxli/.config.git
git submodule update --init --recursive

# Create cache directorie

# Create user local shared directories
```

### Git Pull with Submodule / Update repo including sub-repos
```
git submodule foreach git pull origin master
```

### Other way which may not pull master of the submodules
For the first time we can pull all submodules using
```
git submodule update --init --recursive
```
for the first time. All submodules will be pulled down locally.

To update submodules, we can use
```
git submodule update --recursive --remote
```
or simply
```
git pull --recurse-submodules
```
