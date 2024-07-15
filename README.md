# scripts
Some useful bash scripts

## tmux-dev
```sh
tmux-dev [target-directory] [session-name]
```
Requires [tmux](https://github.com/tmux/tmux) and [fzf](https://github.com/junegunn/fzf).
Opens fzf to select a directory to open in a new tmux session if no arguments are provided.
If a directory is provided, opens that directory in a new tmux session.
If no session name is provided, the session name is the directory name.
The tmux session launches with one main window and one window displaying the
git status of the target directory.
The main window automatically launches whatever `$EDITOR` is set to, or vim as a fallback.

## cht.sh
```sh
cht.sh
```
Requires [fzf](https://github.com/junegunn/fzf).
Provides the user with a selection of languages to query [cht.sh](https://cht.sh).
Asks for a query and launches a new tmux window that shows the cht.sh output.
