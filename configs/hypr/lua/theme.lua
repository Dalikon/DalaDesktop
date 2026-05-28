-- Visual theme: decorations, borders, blur, shadows, animations
-- Sources: UserConfigs/UserDecorations.conf + UserConfigs/UserAnimations.conf
-- Wallust colors are read at config-parse time from the generated file.

local function wallust_colors()
    local c = {}
    local path = os.getenv("HOME") .. "/.config/hypr/wallust/wallust-hyprland.conf"
    local f = io.open(path, "r")
    if not f then return c end
    for line in f:lines() do
        local key, val = line:match("^%$(%w+)%s*=%s*(.-)%s*$")
        if key then c[key] = val end
    end
    f:close()
    return c
end

local c = wallust_colors()

---------------------------------------------------------------------------
-- Borders, gaps, decoration
---------------------------------------------------------------------------
hl.config({
    general = {
        border_size = 2,
        gaps_in     = 2,
        gaps_out    = 4,
        col = {
            active_border   = "rgba(4682b4ff)",  -- steel blue, intentionally not wallust
            inactive_border = "rgba(45475aff)",
        },
    },

    decoration = {
        rounding           = 5,
        active_opacity     = 1.2,
        inactive_opacity   = 1.35,
        fullscreen_opacity = 1.0,
        dim_inactive       = false,
        dim_strength       = 0.1,
        dim_special        = 0.8,

        shadow = {
            enabled      = true,
            range        = 3,
            render_power = 1,
            color          = c.color12 or "rgb(1C1D1D)",
            color_inactive = c.color10 or "rgb(181919)",
        },

        blur = {
            enabled           = true,
            size              = 6,
            passes            = 2,
            ignore_opacity    = true,
            new_optimizations = true,
            special           = true,
            popups            = true,
        },
    },

    group = {
        col = {
            border_active = c.color15 or "rgb(A2A7A7)",
        },
        groupbar = {
            col = {
                active = c.color0 or "rgb(3F4040)",
            },
        },
    },
})

-- TODO: hy3 tab colors via plugin config API (pending verification on 0.55)
-- hl.config({ plugin = { hy3 = { tabs = {
--     border_width        = 1,
--     col_active          = c.color10 or "rgb(181919)",
--     col_active_border   = c.color15 or "rgb(A2A7A7)",
--     col_inactive        = c.color10 or "rgb(181919)",
--     col_inactive_border = c.color10 or "rgb(181919)",
--     col_urgent          = "rgba(ff223340)",
--     col_urgent_border   = "rgba(ff2233ee)",
-- }}})

---------------------------------------------------------------------------
-- Animations
---------------------------------------------------------------------------
hl.config({ animations = { enabled = true } })

hl.curve("myBezier",  { type = "bezier", points = { {0.05, 0.9},  {0.1,  1.05} } })
hl.curve("linear",    { type = "bezier", points = { {0.0,  0.0},  {1.0,  1.0}  } })
hl.curve("wind",      { type = "bezier", points = { {0.05, 0.9},  {0.1,  1.05} } })
hl.curve("winIn",     { type = "bezier", points = { {0.1,  1.1},  {0.1,  1.1}  } })
hl.curve("winOut",    { type = "bezier", points = { {0.3,  -0.3}, {0,    1}    } })
hl.curve("slow",      { type = "bezier", points = { {0,    0.85}, {0.3,  1}    } })
hl.curve("overshot",  { type = "bezier", points = { {0.7,  0.6},  {0.1,  1.1}  } })
hl.curve("bounce",    { type = "bezier", points = { {1.1,  1.6},  {0.1,  0.85} } })
hl.curve("sligshot",  { type = "bezier", points = { {1,    -1},   {0.15, 1.25} } })
hl.curve("nice",      { type = "bezier", points = { {0,    2.0},  {0.5,  -1.0} } })

hl.animation({ leaf = "windowsIn",   enabled = true, speed = 5,   bezier = "slow",    style = "popin" })
hl.animation({ leaf = "windowsOut",  enabled = true, speed = 5,   bezier = "winOut",  style = "popin" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 5,   bezier = "wind",    style = "slide" })
hl.animation({ leaf = "border",      enabled = true, speed = 10,  bezier = "linear"   })
hl.animation({ leaf = "borderangle", enabled = true, speed = 100, bezier = "linear",  style = "loop"  })
hl.animation({ leaf = "fade",        enabled = true, speed = 5,   bezier = "overshot" })
hl.animation({ leaf = "workspaces",  enabled = true, speed = 5,   bezier = "wind"     })
hl.animation({ leaf = "windows",     enabled = true, speed = 5,   bezier = "bounce",  style = "popin" })
