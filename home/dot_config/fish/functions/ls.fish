function ls --wraps='exa --icons -s ext --group-directories-first' --description 'alias ls exa --icons -s ext --group-directories-first'
  exa --icons -s ext --group-directories-first $argv; 
end
