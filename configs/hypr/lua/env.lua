-- Environment variables
-- Migrated from: UserConfigs/ENVariables.conf

-- Toolkit backends
hl.env("GDK_BACKEND",   "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("CLUTTER_BACKEND", "wayland")

-- XDG
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE",    "wayland")

-- Qt
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR",       "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION","1")
hl.env("QT_QPA_PLATFORMTHEME",              "qt5ct")
hl.env("QT_QPA_PLATFORMTHEME",              "qt6ct")
hl.env("QT_QUICK_CONTROLS_STYLE",           "org.hyprland.style")

-- Scaling
hl.env("GDK_SCALE",        "1")
hl.env("QT_SCALE_FACTOR",  "1")

-- Cursor
hl.env("HYPRCURSOR_THEME", "Bibata-Modern-Ice")
hl.env("HYPRCURSOR_SIZE",  "24")

-- Firefox
hl.env("MOZ_ENABLE_WAYLAND", "1")

-- Electron (>= 28): prefer Wayland, fall back to X11
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
