yabai -m query --spaces --space |
	jq -re '.index' |
	xargs -I{} yabai -m query --windows --space {} |
	jq -sre 'add \
| map(select(.["is-minimized"] == false)) \
| map(select(.layer == "normal")) \
| sort_by(.display, .frame.y, .frame.x, .id) \
| reverse \
| nth(index(map(select(.["has-focus"] == true))) - 1).id' |
	xargs -I{} yabai -m window --focus {}
