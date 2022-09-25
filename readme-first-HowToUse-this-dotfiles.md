## some other things you might do it your way
```shell
install brew
brew install nodejs
rustup install rust nightly
```

## download .vimrc file to home folder
```
  **Backup your existing one FIRST**
```

## install vim plug
```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

```

## use plug to install other plugins
launch vim, and run:
```
:PlugInstall

restart vim

:CocInstall coc-rust-analyzer
```

## Done, enjoy your Rust coding with vim
