# OhMyFish config
set -g theme_display_git yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant no
set -g theme_display_docker_machine yes
set -g theme_display_hg yes
set -g theme_display_virtualenv no
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration no
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts no
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme gruvbox
set -g fish_prompt_pwd_dir_length 0
set -g theme_project_dir_length 1

# Personal Config
set -Ux EDITOR nvim
set -Ux TERM xfce4-terminal
set -Ux NODE_VERSION (node -v)
set -Ux NODE_BIN $NVM_DIR/versions/node/$NODE_VERSION
set -gx PATH /usr/local/go/bin $NVM_DIR $NODE_BIN $JAVA_HOME $HOME/.deno/bin $HOME/.radicle/bin $SDKMAN $HOME/.local/bin $HOME/.local/share/bob/nvim-bin $HOME/bin/flutter/bin $HOME/.cargo/bin $GOPATH/bin $HOME/.nimble/bin /usr/lib/dart/bin $PATH
set -gx GOPATH $HOME/.local/bin/go
set -gx JAVA_HOME ~/.jdks/openjdk-21.0.2/bin
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx FZF_DEFAULT_COMMAND 'rg --files --follow --hidden'
set -gx NVM_DIR $XDG_CONFIG_HOME/nvm
set -gx SDKMAN $HOME/.sdkman/bin

#	SHORTCUTS USER
function qwerty
    command setxkbmap us
end

function dvorak
    command setxkbmap dvorak
end

function dvp
    command setxkbmap -layout us -variant dvp -option compose:102 -option keypad:atm -option numpad:shift3 -option kpdl:semi
end

function edit -d "Alias 'nvim'"
    command nvim $argv
end

function xbps
    switch $argv[1]
        case search
            command xbps-query -Rs $argv[2]
        case install
            command sudo xbps-install -S $argv[2]
        case remove
            command sudo xbps-remove -R $argv[2]
        case update
            command sudo xbps-install -Su
        case '*'
            echo [install, search, remove]
    end
end

function e
    switch $argv
        case awesome
            cd ~/.config/awesome/
            command ls
        case fish
            command $EDITOR ~/.config/fish/config.fish
        case openbox
            cd ~/.config/openbox/
            command ls
        case nvim
            command $EDITOR ~/.config/nvim/init.lua
        case source
            source ~/.config/fish/config.fish
            echo "Fish config sourced"
        case '*'
            echo [awesome, fish, openbox, nvim, source]
    end
end

function dev
    switch $argv
        case julia
            cd ~/DEV/Julia/
            command ls
        case go
            cd ~/DEV/Golang/
            command ls
        case rust
            cd ~/DEV/Rustlang/
            command ls
        case dot
            cd ~/DEV/dotfiles/
            command ls
        case '*'
            echo [julia, go, rust, dot]
    end
end

starship init fish | source

# pnpm
set -gx PNPM_HOME "/home/devlcp/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
