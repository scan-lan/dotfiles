function la --wraps=ls --wraps='exa --icons -s ext --group-directories-first' --wraps='exa --icons -sa ext --group-directories-first' --wraps='exa --icons -s ext --group-directories-first -a' --description 'alias la exa --icons -s ext --group-directories-first -a'
  exa --icons -s ext --group-directories-first -a $argv; 
end
