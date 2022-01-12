# Prerequirements

1. Update packages by 'sudo apt update' and 'sudo apt upgrade'
2. Disable chsh:PAM authentication
  - $ sudo vim /etc/pam.d/chsh
  - Comment 'auth required pam_shells.so'

# .dotfiles

0. Go to home path by 'cd ~'
1. Clone this repository
2. Run `install.sh`
3. Open up new window to initiate `zsh` shell

### Current issues

- installing `nvim` plugins in `--headless` causes error output, but doesn't break installation
- Would like to improve the install script

### Future optimizations

- Improve install script by automating step 3 above, initializing the `zsh` environment


### Installing Tools

- tsserver
- rust_analyser
- rustup
- golang
- node using nvm

