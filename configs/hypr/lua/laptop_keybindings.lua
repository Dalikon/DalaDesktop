-- Laptop-specific keybinds and device config
-- Migrated from: UserConfigs/Laptops.conf

local home    = os.getenv("HOME")
local scripts = home .. "/.config/hypr/scripts"
local mod     = "SUPER"

-- Keyboard backlight
hl.bind("xf86KbdBrightnessDown", hl.dsp.exec_cmd(scripts .. "/BrightnessKbd.sh --dec"), { repeating = true })
hl.bind("xf86KbdBrightnessUp",   hl.dsp.exec_cmd(scripts .. "/BrightnessKbd.sh --inc"), { repeating = true })

-- ASUS-specific function keys
hl.bind("xf86Launch1", hl.dsp.exec_cmd("rog-control-center"))
hl.bind("xf86Launch3", hl.dsp.exec_cmd("asusctl led-mode -n"))
hl.bind("xf86Launch4", hl.dsp.exec_cmd("asusctl profile -n"))

-- Monitor backlight
hl.bind("xf86MonBrightnessDown", hl.dsp.exec_cmd(scripts .. "/Brightness.sh --dec"), { repeating = true })
hl.bind("xf86MonBrightnessUp",   hl.dsp.exec_cmd(scripts .. "/Brightness.sh --inc"), { repeating = true })

-- Touchpad toggle
hl.bind("xf86TouchpadToggle", hl.dsp.exec_cmd(scripts .. "/TouchPad.sh"))

-- Screenshots via F6 (laptops without PrtScr)
hl.bind(mod ..           " + F6", hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --now"))
hl.bind(mod .. " + SHIFT + F6",   hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --area"))
hl.bind(mod .. " + CTRL + F6",    hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --in5"))
hl.bind(mod .. " + ALT + F6",     hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --in10"))
hl.bind("ALT + F6",               hl.dsp.exec_cmd(scripts .. "/ScreenShot.sh --active"))

-- Touchpad device toggle (enabled by default)
hl.device({
    name    = "asue1209:00-04f3:319f-touchpad",
    enabled = true,
})
