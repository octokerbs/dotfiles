# dotfiles

To use this dotfiles you could create a symbolic link from one of the directories to the .config directory. Every time your .config/configDir is
modified it will actually modify your dotfiles directory and you can easly track the changes.

```bash
ln -s cwd/dotfiles/nvim ~/.config/nvim
```
# Utilidades 

## LazyVim

- Instalar kit completo para algun lenguaje con :LazyExtras
- Ver el grupo de algun token poniendo el cursor sobre este y usando el comand :Inspect. Semantic Tokens tiene prioridad sobre TreeSitter y las prioridades van del numero mas grande al mas chico (de abajo para arribaa, el de abajo de todo tiene mayor prioridad)
