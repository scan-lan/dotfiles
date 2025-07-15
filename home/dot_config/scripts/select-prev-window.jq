add
| map(select(.["is-minimized"] == false))
| map(select(.layer == "normal" and .["is-floating"] == false))
| sort_by(.display, .frame.y, .frame.x, .id)
| nth(index(map(select(.["has-focus"] == true))) - 1).id
