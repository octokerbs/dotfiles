# dotfiles

To use this dotfiles you could create a symbolic link from one of the directories to the .config directory. Every time your .config/configDir is
modified it will actually modify your dotfiles directory and you can easly track the changes.

```bash
ln -s cwd/dotfiles/nvim ~/.config/nvim
```

