### Prerequirements

1. Update packages by 'sudo apt update' and 'sudo apt upgrade'
2. Disable chsh:PAM authentication

    - $ sudo vim /etc/pam.d/chsh
    - Comment 'auth required pam_shells.so'

3. Check the DNS settings (network issue with WSL & Docker)
    
    - sudo vim /etc/resolv.conf
    - Change the nameserver to '8.8.8.8'

4. Install Packages
    - sudo apt install direnv

5. Change Terminal Fonts to NF

### .dotfiles

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

- node using nvm
    - nvm install 16.13.2
- tsserver
    - npm install -g typescript typescript-language-server
- rustup
    - curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
- rust_analyser
    - $ mkdir -p ~/.local/bin
    - $ curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
    - $ chmod +x ~/.local/bin/rust-analyzer
- dotnet
    - wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
    - sudo dpkg -i packages-microsoft-prod.deb
    - rm packages-microsoft-prod.deb
    - sudo apt-get update; \
        sudo apt-get install -y apt-transport-https && \
        sudo apt-get update && \
        sudo apt-get install -y dotnet-sdk-6.0
- golang
    - sudo apt install golang-go


