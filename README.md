VIM Config
==========

Primary features include pathogen, a custom colour scheme, ctr-p, tern and handlebars
support. Configuratin that works with Mac OS and Ubuntu, VIM and GVIM/MacVIM.

Windows works with GVIM. but there are issues with the colour scheme in cmd.exe VIM which need to be fixed.

Install
-------

### Ubuntu/Mac OS

```
cd ~
git clone https://github.com/garth/vim.git .vim
ln -s .vim/.vimrc .vimrc
cd .vim
git submodule update --init --recursive
cd bundle/tern_for_vim
npm install
```

On Ubuntu remember to install vim (`sudo apt-get install vim`) since the defaul vi install is very limited.

### Windows

```
cd %home%
git clone https://github.com/garth/vim.git vimfiles
mklink _vimrc vimfiles\.gitrc
cd vimfiles
git submodule update --init --recursive
cd bundle\tern_for_vim
npm install
```
