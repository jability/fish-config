# Bootstrap Fisher
if not functions -q fisher
    echo "Installing fisher for the first time..." >&2
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fisher
end

# Exports
 set -x GOPATH $HOME/Code/golang
 set -x GOROOT /usr/local/opt/go/libexec
 set -x EDITOR vim
 set -x FZF_LEGACY_KEYBINDINGS 0

# PATH
### Homebrew
 set fish_user_paths /usr/local/bin $fish_user_paths
### Golang
 set fish_user_paths $GOPATH/bin $GOROOT/bin $fish_user_paths
### Rust
 set fish_user_paths $HOME/.cargo/bin $fish_user_paths
