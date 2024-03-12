function la --wraps=ls --wraps='eza --icons -s ext --group-directories-first' --wraps='eza --icons -sa ext --group-directories-first' --wraps='eza --icons -s ext --group-directories-first -a' --description 'alias la eza --icons -s ext --group-directories-first -a'
    eza --icons -s ext --group-directories-first -a $argv
end
