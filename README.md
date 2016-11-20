# Yet another vim config repo

**WARNING: customization freak ahead!**

This repo contains my current vim configuration. It is basically the contents
of my `~/.vim/` folder.

## Usage

This is a three step process:

1. Clone this repo into `~/.vim`

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