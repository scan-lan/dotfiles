yabai -m query --spaces --space |
	jq -re '.index' |
	xargs -I{} yabai -m query --windows --space {} |
	jq -sre -f ~/.config/scripts/select-prev-window.jq |
	xargs -I{} yabai -m window --focus {}
