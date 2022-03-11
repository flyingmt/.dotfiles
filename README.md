## .dotfiles for Ubuntu on WSL

### Prerequirements

1. Update package repos and packages

    ```bash
    $ sudo apt update
    $ sudo apt upgrade
    ```

2. Disable chsh:PAM authentication

    ```bash
    $ sudo vim /etc/pam.d/chsh
    ```

    Comment line with 'auth required pam_shells.so'

3. Check the DNS settings

    Sometimes on WSL with Docker the network doesn't work.

    ```bash
    $ sudo vim /etc/resolve.conf
    ```
    
    Change the nameserver value to '8.8.8.8'

4. Install Packages

    ```bash
    $ sudo apt install direnv tash-cli curl net-tools git
    ```

5. Change Terminal Fonts to your favorite Nerd Font

    Link : https://www.nerdfonts.com/font-downloads

### Config for shell with the dotfiles

0. Go to home path

    ```bash
    $ cd ~
    ```

1. Clone this repository

    ```bash
    $ git clone https://github.com/flyingmt/.dotfiles.git
    ```

2. Run `install.sh`

    ```bash
    $ cd .dotfiles
    $ ./install.sh
    ```

3. Open up new terminal to initiate `zsh` shell

4. Fix the telescope-fzf-native error when running nvim

    ```bash
    $ cd ~/.dotfiles/nvim/.config/nvim/plugged/telescope-fzf-native.nvim
    $ make
    ```


### Installing Tools 

- node using nvm
    
    ```bash
    $ nvm install 16.14.0
    ```

- tsserver
    ```bash
    $ npm install -g typescript typescript-language-server
    ```
    
- svelte
    ```bash
    $ npm install -g degit
    $ npm install -g svelte-language-server
    ```

- rust tool chain install
    ```bash
    $ rustup toolchain install stable
    ```

- rust_analyser
    
    ```bash
    $ mkdir -p ~/.local/bin
    $ curl -L https://github.com/rust-analyzer/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
    $ chmod +x ~/.local/bin/rust-analyzer
    ```

- csharp-ls

    ```bash
    $ dotnet tool install --global csharp-ls
    ```

- gopls

    ```bash
    $ go install golang.org/x/tools/gopls@latest
    ```
    Must add the go bin folder to path.

- python

    ```bash
    $ sudo apt install pipx
    $ sudo apt install python3.8-venv
    $ pipx install 'python-lsp-server[all]'
    ```
### Upgrading Tools

- nix packages

    ```bash
    $ nix-env -u '*'
    ```
    
- nvim plug

    In vim :PlugUpgrade
    
- vim plugins

    In vim :PlugUpdate
    
