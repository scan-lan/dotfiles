if status is-interactive
    fish_add_path -g ~/.cargo/bin
    fish_add_path -g ~/.pyenv
    fish_add_path -g ~/.local/bin

    set -gx RIPGREP_CONFIG_PATH ~/.config/ripgreprc

    fish_vi_key_bindings
    fzf_configure_bindings --directory=\cf --variables=\e\cv
end

set -gx EDITOR /usr/local/bin/nvim
starship init fish | source

# projects
abbr op '~/repos/work/one-portal'
abbr ds '~/repos/work/design-system'
abbr fcfg 'cd ~/.config/fish/ && nvim config.fish'
abbr vcfg 'cd ~/.config/nvim/ && nvim init.lua'
abbr kcfg 'nvim ~/.config/kitty/kitty.conf'
abbr pcfg 'nvim ~/.config/starship.toml'

abbr i 'npm i'
abbr d 'npm run develop'
abbr tsc 'npx tsc --noEmit'
abbr nx 'npx nx'

abbr v nvim
abbr v. 'nvim .'

abbr rp --set-cursor "set -g --erase PATH[%]; string join0 \$PATH | tr \"\\0\" \"\\n\" | nl"

test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

nvm use default --silent

alias assume="source /usr/local/bin/assume.fish"
zoxide init fish --cmd cd | source
