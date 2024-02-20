function lt --wraps='exa --icons --group-directories-first -TL 2 --ignore-glob="*node_modules*"' --description 'alias lt exa --icons --group-directories-first -TL 2 --ignore-glob="*node_modules*"'
  exa --icons --group-directories-first -TL 2 --ignore-glob="*node_modules*" $argv
        
end
