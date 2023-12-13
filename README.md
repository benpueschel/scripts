# scripts
Some useful bash scripts

## walk-dir
```sh 
./walk-dir [opts] <dir>
```
Recursively walk the specified directory and print all file paths to stdout.
### Options
- `-a`: show hidden files

## tmux-dev
```sh
tmux-dev [name]
```
Launches a new tmux session with one main window on the left and one terminal on the right. 
Main window automatically launches whatever `$EDITOR` is set to, or vim as a fallback.
Session name will default to the current directory name if no argument is passed to `tmux-dev`.

## cht.sh
```sh
cht.sh
```
Provides the user with a selection of languages to query [cht.sh](https://cht.sh) Asks for a query and 
launches a new tmux window that shows the cht.sh output.
