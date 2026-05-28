-- Monitor profile: one external monitor (any)
-- eDP-1 kept active but auto-placed below external; scale 1.5 for HiDPI comfort
hl.monitor({ output = "eDP-1", mode = "2880x1920@120.0", position = "auto", scale = 1.5 })
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1.0 })
