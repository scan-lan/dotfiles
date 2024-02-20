if status is-interactive
    set -gx nvm_data ~/.local/share/nvm
    set -gx nvm_default_version 18

    fish_add_path -g ~/.cargo/bin
    fish_add_path -g ~/.pyenv
    fish_add_path -g ~/.local/bin

    set -gx RIPGREP_CONFIG_PATH ~/.config/ripgreprc
    set -gx EDITOR /usr/local/bin/nvim

    fish_vi_key_bindings
    fzf_configure_bindings --directory=\cf --variables=\e\cv
end

starship init fish | source

# projects
abbr op '~/repos/work/one-portal'
abbr ds '~/repos/work/design-system'
abbr fcfg 'cd ~/.config/fish/ && nvim config.fish'
abbr vcfg 'cd ~/.config/nvim/ && nvim init.lua'
abbr kcfg 'nvim ~/.config/kitty/kitty.conf'
abbr pcfg 'nvim ~/.config/starship.toml'

# git
abbr g git

# add
abbr ga 'git add'
abbr ga. 'git add .'
abbr gap 'git add -p'

# bisect
abbr gbs 'git bisect'
abbr gbst 'git bisect start'
abbr gbrs 'git bisect reset'

# branch
abbr gb 'git branch'
abbr gbd 'git branch -d'

# checkout
abbr gco 'git checkout'

# clone
abbr gcl 'git clone'
abbr gclw 'git clone-for-worktrees'

# commit
abbr gc 'git cz'
abbr gc! 'git commit --amend'
abbr gca 'git cz -a'
abbr gca! 'git commit -a --amend'
abbr gcam --set-cursor 'git commit -am "%"'
abbr gcm --set-cursor 'git commit -m "%"'

# diff
abbr gd 'git diff'
abbr gdc 'git diff --cached'

# fetch
abbr gfa 'git fetch --all'

# log
abbr glo 'git log --oneline'

# pull
abbr gl 'git pull'
abbr glm 'git fetch origin main:main'

# push
abbr gp 'git push'
abbr gpf 'git push --force-with-lease'

# rebase
abbr garbc 'git add . && git rebase --continue'
abbr grb 'git rebase'
abbr grba 'git rebase --abort'
abbr grbc 'git rebase --continue'
abbr grbi --set-cursor 'git rebase -i HEAD~%'
abbr grbm 'git fetch origin main:main; git rebase main'

# remote
abbr gr 'git remote'
abbr grv 'git remote -v'
abbr gra 'git remote add'

# reset
abbr grh --set-cursor 'git reset HEAD~%'

# restore
abbr grs 'git restore'
abbr grst 'git restore --staged'

# switch
abbr gs 'git switch'
abbr gs- 'git switch -'
abbr gsm 'git switch main'
abbr gsc --set-cursor 'git switch -c % main'

# stash
abbr gsta 'git stash -u'
abbr gstd 'git stash drop'
abbr gstp 'git stash pop'

# status
abbr s 'git status'

# worktree
abbr gw 'git worktree'
abbr gwa 'git worktree add'
abbr gwrm 'git worktree remove'

abbr ca 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ add'
abbr cap 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ add -p'
abbr ccm 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ cz'
abbr ccam --set-cursor 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ cz -am "%"'
abbr cdca 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ diff --cached'
abbr cfgd 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ diff'
abbr cfgp 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ push'
abbr cl 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME/ pull'
abbr cfg 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
abbr cs 'git --git-dir=$HOME/.cfg/ --work-tree=$HOME status'

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
