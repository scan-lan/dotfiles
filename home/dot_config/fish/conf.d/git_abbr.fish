#!/usr/bin/env fish
#
# git-abbr: git abbreviations for the fish shell
#
# Copyright (c) 2022 Rich Lewis
# MIT License

abbr g git

abbr ga 'git add'
abbr gaa 'git add --all'
abbr gap 'git add --patch'
abbr gau 'git add --update'
abbr gav 'git add --verbose'
# abbr gapp 'git apply'
# abbr gapt 'git apply --3way'
abbr ga. 'git add .'

abbr gb 'git branch'
abbr gba 'git branch -a'
abbr gbd 'git branch -d'
abbr gbdf 'git branch -d -f'
abbr gbD 'git branch -D'
abbr gbDf 'git branch -D -f'
abbr gbnm 'git branch --no-merged'
abbr gbr 'git branch --remote'

abbr gbl 'git blame -b -w'

abbr gbs 'git bisect'
abbr gbsb 'git bisect bad'
abbr gbsg 'git bisect good'
abbr gbsr 'git bisect reset'
abbr gbss 'git bisect start'

# abbr gc 'git commit -v'
abbr gc 'git czg'
abbr gca 'git czg -a'
# abbr gca 'git commit -a -v'
abbr gca! 'git commit -a -v --amend'
abbr gcan! 'git commit -a -v --no-edit --amend'
abbr gcans! 'git commit -a -v -s --no-edit --amend'
abbr gcam --set-cursor 'git commit -am "%"'
abbr gcas 'git commit -a -s'
abbr gcasm 'git commit -a -s -m'
abbr gci 'git commit --allow-empty -v -m\'chore: initial commit\''
abbr gc! 'git commit -v --amend'
abbr gcn 'git commit -v --no-edit'
abbr gcn! 'git commit -v --amend --no-edit'
abbr gcsm 'git commit -s -m'
abbr gcm --set-cursor 'git commit -m "%"'
abbr gcs 'git commit -S'

abbr gcf 'git config --list'

abbr gcl 'git clone --recurse-submodules'
abbr gclw 'git clone-for-worktrees'

abbr gclean 'git clean -id'

abbr gco 'git checkout'
abbr gcob 'git checkout -b'
abbr gcom 'git checkout (git_main_branch)'
abbr gcod 'git checkout (git_develop_branch)'
abbr gcof 'git checkout (git_feature_prepend)/'
abbr gcoh 'git checkout hotfix/'
abbr gcor 'git checkout release/'
abbr gcos 'git checkout support/'
abbr gcors 'git checkout --recurse-submodules'

abbr gcount 'git shortlog -sn'

abbr gcp 'git cherry-pick'
abbr gcpa 'git cherry-pick --abort'
abbr gcpc 'git cherry-pick --continue'

abbr gd 'git diff'
abbr gdc 'git diff --cached'
abbr gdcw 'git diff --cached --word-diff'
abbr gdct 'git diff --staged'
abbr gdt 'git diff-tree --no-commit-id --name-only -r'
abbr gdnolock 'git diff ":(exclude)package-lock.json" ":(exclude)*.lock"'
abbr gdup 'git diff @{upstream}'
abbr gdv 'git diff -w $@ | view -'

abbr gdct 'git describe --tags (git rev-list --tags --max-count=1)'

abbr gf 'git fetch'
abbr gfa 'git fetch --all --prune'
abbr gfm 'git fetch origin (git_main_branch):(git_main_branch)'
abbr gfo 'git fetch origin'

abbr ghh 'git help'

abbr gi 'git init'

abbr gignore 'git update-index --assume-unchanged'
abbr gignored 'git ls-files -v | grep "^[[:lower:]]"'

abbr gk 'gitk --all --branches &!'
abbr gke 'gitk --all (git log -g --pretty=%h) &!'

abbr gfg 'git ls-files | grep'

abbr gl 'git log'
abbr gls 'git log --stat'
abbr glsp 'git log --stat -p'
abbr glg 'git log --graph'
abbr glgda 'git log --graph --decorate --all'
abbr glgm 'git log --graph --max-count=10'
abbr glo 'git log --oneline --decorate'
abbr glog 'git log --oneline --decorate --graph'
abbr gloga 'git log --oneline --decorate --graph --all'

abbr gpl 'git pull'
abbr gplo 'git pull origin'
abbr gplom 'git pull origin (git_main_branch)'
abbr gplu 'git pull upstream'
abbr gplum 'git pull upstream (git_main_branch)'

# gm: git merge
abbr gm 'git merge'
abbr gmom 'git merge origin/(git_main_branch)'
abbr gmum 'git merge upstream/(git_main_branch)'
abbr gma 'git merge --abort'

# gmtl: git mergetool
abbr gmtl 'git mergetool --no-prompt'
abbr gmtlvim 'git mergetool --no-prompt --tool=vimdiff'

# gp: git push
abbr gp 'git push'
abbr gpd 'git push --dry-run'
abbr gpf 'git push --force-with-lease'
abbr gpf! 'git push --force'
abbr gpsu 'git push --set-upstream origin (git_current_branch)'
abbr gpt 'git push --tags'
abbr gptf 'git push --tags --force-with-lease'
abbr gptf! 'git push --tags --force'
abbr gpoat 'git push origin --all && git push origin --tags'
abbr gpoatf! 'git push origin --all --force-with-lease && git push origin --tags --force-with-lease'
abbr gpoatf! 'git push origin --all --force && git push origin --tags --force'
abbr gpv 'git push -v'

# gr: git remote
abbr gr 'git remote -v'
abbr gra 'git remote add'
abbr grau 'git remote add upstream'
abbr grrm 'git remote remove'
abbr grmv 'git remote rename'
abbr grset 'git remote set-url'
abbr gru 'git remote update'
abbr grv 'git remote -v'
abbr grvv 'git remote -vvv'

# grb: git rebase
abbr grb 'git rebase'
abbr grba 'git rebase --abort'
abbr grbc 'git rebase --continue'
abbr grbd 'git rebase (git_develop_branch)'
abbr grbi 'git rebase -i'
abbr grbih --set-cursor 'git rebase -i HEAD~%'
abbr grbom 'git rebase origin/(git_main_branch)'
abbr grbo 'git rebase --onto'
abbr grbs 'git rebase --skip'
abbr garbc 'git add . && git rebase --continue'

# grev: git revert
abbr grev 'git revert'

# grs: git reset
abbr grs 'git reset'
abbr grs! 'git reset --hard'
abbr grsh --set-cursor 'git reset HEAD~%'
abbr grsh! 'git reset HEAD --hard'
abbr grsoh 'git reset origin/(git_current_branch)'
abbr grsoh! 'git reset origin/(git_current_branch) --hard'
abbr gpristine 'git reset --hard && git clean -dffx'
abbr grs- 'git reset --'

# grm: git rm
abbr grm 'git rm'
abbr grmc 'git rm --cached'

# grst: git restore
abbr grst 'git restore'
abbr grsts 'git restore --source'
abbr grstst 'git restore --staged'

# grt: git return
abbr grt 'cd (git rev-parse --show-toplevel || echo .)'

# gs: git status
# abbr gs 'git status'
abbr s 'git status'
abbr gss 'git status -s'
abbr gsb 'git status -sb'

# gshow: git show
abbr gshow 'git show'
abbr gshowps 'git show --pretty=short --show-signature'

# gst: git stash
abbr gst 'git stash -u'
abbr gsta 'git stash apply'
abbr gstc 'git stash clear'
abbr gstd 'git stash drop'
abbr gstl 'git stash list'
abbr gstp 'git stash pop'
abbr gstshow 'git stash show --text'
abbr gstall 'git stash --all'
abbr gsts 'git stash save'

# gsu: git submodule
abbr gsu 'git submodule update'

# gsw: git switch
abbr gs 'git switch'
abbr gsc 'git switch -c'
abbr gscm --set-cursor 'git switch -c % origin/(git_main_branch)'
abbr gsm 'git switch (git_main_branch)'
abbr gswd 'git switch (git_develop_branch)'
abbr gs- 'git switch -'

# gt: git tag
abbr gt 'git tag'
abbr gts 'git tag -s'
abbr gta 'git tag -a'
abbr gtas 'git tag -a -s'
# gtl

# gwch: git whatchanged
abbr gwch 'git whatchanged -p --abbrev-commit --pretty=medium'

# gwt: git worktree
abbr gw 'git worktree'
abbr gwa 'git worktree add'
abbr gwls 'git worktree list'
abbr gwmv 'git worktree move'
abbr gwrm 'git worktree remove'

# gam: git am
abbr gam 'git am'
abbr gamc 'git am --continue'
abbr gams 'git am --skip'
abbr gama 'git am --abort'
abbr gamscp 'git am --show-current-patch'
