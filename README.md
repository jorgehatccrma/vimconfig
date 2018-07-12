# Yet another vim config repo

**WARNING: customization freak ahead!**

This repo contains my current vim configuration. It is basically the contents
of my `~/.vim/` folder.

## Usage

This is a three step process:

1. Clone this repo into `~/.vim`

```bash
git clone git@github.com:jorgehatccrma/vimconfig.git ~/.vim
```

2. Point Vim to the `vimrc` file in this repo.

   To make it work without conflicting with other stuff in my home directory,
   I decided to keep my `.vimrc` file inside `~/.vim`. So you will need to
   tell vim to use this 'non-standard' location. There are 3 alternatives.
   Pick the one that suits you best.

   - Create a link to it:

    ```bash
    ln -s ~/.vim/vimrc ~/.vimrc
    ```

   - Change your $MYVIMRC environment variable:

    ```bash
    export MYVIMRC=~/.vim/vimrc
    ```

     (you could add this to your `~/.bash_profile`)

   - Create a `~/.vimrc` file with a single line in it:

    ```bash
    echo "runtime vimrc" > .vimrc
    ```

     I personally don't like this one, as it breaks some of my config, but
     some people like to use it.

### NeoVim

I recently installed [NeoVim](https://neovim.io) to try it out. A simple way to
use this repo as the NeoVim config is to link `~/.vim/init.vim` to `.vim/vimrc`:

    ln -s ~/.vim/vimrc ~/.vim/init.vim


3. Launch Vim and Install plugins

The first time you launch Vim, it should automatically install
[Vim Plug](https://github.com/junegunn/vim-plug), which is the plugin manager
of my choice. Only the manager is installed automatically. The plugins you need
to install from within Vim with a single command:

    :PlugInstall

I could have chosen to trigger this command automatically, but that would force
you to use all the plugins I've added to `vimrc`. You might want to tweak that
list before running the `:PlugInstall` command.

To update plugins, just run

    :PlugUpdate

If you remove pluings, is recommended to run

    :PlugClean


