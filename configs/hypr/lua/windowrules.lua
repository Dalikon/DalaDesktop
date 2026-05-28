-- Window and layer rules
-- Migrated from: UserConfigs/WindowRules.conf

hl.window_rule({
    name  = "windowrule-1",
    match = {
        class = "^([Ff]irefox|org.mozilla.firefox|[Ff]irefox-esr|[Ff]irefox-bin)$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-2",
    match = {
        class = "^([Gg]oogle-chrome(-beta|-dev|-unstable)?)$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-3",
    match = {
        class = "^(chrome-.+-Default)$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-4",
    match = {
        class = "^([Cc]hromium)$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-5",
    match = {
        class = "^([Mm]icrosoft-edge(-stable|-beta|-dev|-unstable))$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-6",
    match = {
        class = "^(Brave-browser(-beta|-dev|-unstable)?)$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-7",
    match = {
        class = "^([Tt]horium-browser|[Cc]achy-browser)$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-8",
    match = {
        class = "^(zen-alpha|zen)$",
    },
    tag = "+browser",
})

hl.window_rule({
    name  = "windowrule-9",
    match = {
        class = "^(swaync-control-center|swaync-notification-window|swaync-client|class)$",
    },
    tag = "+notif",
})

hl.window_rule({
    name  = "windowrule-10",
    match = {
        title = "^(KooL Quick Cheat Sheet)$",
    },
    tag = "+KooL_Cheat",
})

hl.window_rule({
    name  = "windowrule-11",
    match = {
        title = "^(KooL Hyprland Settings)$",
    },
    tag = "+KooL_Settings",
})

hl.window_rule({
    name  = "windowrule-12",
    match = {
        class = "^(nwg-displays|nwg-look)$",
    },
    tag = "+KooL-Settings",
})

hl.window_rule({
    name  = "windowrule-13",
    match = {
        class = "^(Alacritty|kitty|kitty-dropterm)$",
    },
    tag = "+terminal",
})

hl.window_rule({
    name  = "windowrule-14",
    match = {
        class = "^([Tt]hunderbird|org.gnome.Evolution)$",
    },
    tag = "+email",
})

hl.window_rule({
    name  = "windowrule-15",
    match = {
        class = "^(eu.betterbird.Betterbird)$",
    },
    tag = "+email",
})

hl.window_rule({
    name  = "windowrule-16",
    match = {
        class = "^(codium|codium-url-handler|VSCodium)$",
    },
    tag = "+projects",
})

hl.window_rule({
    name  = "windowrule-17",
    match = {
        class = "^(VSCode|code-url-handler)$",
    },
    tag = "+projects",
})

hl.window_rule({
    name  = "windowrule-18",
    match = {
        class = "^(jetbrains-.+)$",
    },
    tag = "+projects",
})

hl.window_rule({
    name  = "windowrule-19",
    match = {
        class = "^(com.obsproject.Studio)$",
    },
    tag = "+screenshare",
})

hl.window_rule({
    name  = "windowrule-20",
    match = {
        class = "^([Dd]iscord|[Ww]ebCord|[Vv]esktop)$",
    },
    tag = "+im",
})

hl.window_rule({
    name  = "windowrule-21",
    match = {
        class = "^([Ff]erdium)$",
    },
    tag = "+im",
    center = true,
    float = true,
    size = "(monitor_w*0.6) (monitor_h*0.7)",
})

hl.window_rule({
    name  = "windowrule-22",
    match = {
        class = "^([Ww]hatsapp-for-linux)$",
    },
    tag = "+im",
})

hl.window_rule({
    name  = "windowrule-23",
    match = {
        class = "^(ZapZap|com.rtosta.zapzap)$",
    },
    tag = "+im",
})

hl.window_rule({
    name  = "windowrule-24",
    match = {
        class = "^(org.telegram.desktop|io.github.tdesktop_x64.TDesktop)$",
    },
    tag = "+im",
})

hl.window_rule({
    name  = "windowrule-25",
    match = {
        class = "^(teams-for-linux)$",
    },
    tag = "+im",
})

hl.window_rule({
    name  = "windowrule-26",
    match = {
        class = "^(gamescope)$",
    },
    tag = "+games",
})

hl.window_rule({
    name  = "windowrule-27",
    match = {
        class = "^(steam_app_\\d+)$",
    },
    tag = "+games",
})

hl.window_rule({
    name  = "windowrule-28",
    match = {
        class = "^([Ss]team)$",
    },
    tag = "+gamestore",
})

hl.window_rule({
    name  = "windowrule-29",
    match = {
        title = "^([Ll]utris)$",
    },
    tag = "+gamestore",
})

hl.window_rule({
    name  = "windowrule-30",
    match = {
        class = "^(com.heroicgameslauncher.hgl)$",
    },
    tag = "+gamestore",
})

hl.window_rule({
    name  = "windowrule-31",
    match = {
        class = "^([Tt]hunar|org.gnome.Nautilus|[Pp]cmanfm-qt)$",
    },
    tag = "+file-manager",
})

hl.window_rule({
    name  = "windowrule-32",
    match = {
        class = "^(app.drey.Warp)$",
    },
    tag = "+file-manager",
})

hl.window_rule({
    name  = "windowrule-34",
    match = {
        class = "^([Ww]aytrogen)$",
    },
    tag = "+wallpaper",
})

hl.window_rule({
    name  = "windowrule-35",
    match = {
        class = "^([Aa]udacious)$",
    },
    tag = "+multimedia",
})

hl.window_rule({
    name  = "windowrule-35b",
    match = {
        class = "^([Mm]pv|vlc)$",
    },
    tag = "+multimedia_video",
    no_blur = true,
    opacity = 1.0,
})

hl.window_rule({
    name  = "windowrule-36",
    match = {
        title = "^(ROG Control)$",
    },
    tag = "+settings",
    center = true,
})

hl.window_rule({
    name  = "windowrule-37",
    match = {
        class = "^(wihotspot(-gui)?)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-38",
    match = {
        class = "^([Bb]aobab|org.gnome.[Bb]aobab)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-39",
    match = {
        class = "^(gnome-disks|wihotspot(-gui)?)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-40",
    match = {
        title = "(Kvantum Manager)",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-41",
    match = {
        class = "^(file-roller|org.gnome.FileRoller)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-42",
    match = {
        class = "^(nm-applet|nm-connection-editor|blueman-manager)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-43",
    match = {
        class = "^(pavucontrol|org.pulseaudio.pavucontrol|com.saivert.pwvucontrol)$",
    },
    tag = "+settings",
    center = true,
})

hl.window_rule({
    name  = "windowrule-44",
    match = {
        class = "^(qt5ct|qt6ct|[Yy]ad)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-45",
    match = {
        class = "(xdg-desktop-portal-gtk)",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-46",
    match = {
        class = "^(org.kde.polkit-kde-authentication-agent-1)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-47",
    match = {
        class = "^([Rr]ofi)$",
    },
    tag = "+settings",
})

hl.window_rule({
    name  = "windowrule-48",
    match = {
        class = "^(gnome-system-monitor|org.gnome.SystemMonitor|io.missioncenter.MissionCenter)$",
    },
    tag = "+viewer",
})

hl.window_rule({
    name  = "windowrule-49",
    match = {
        class = "^(evince)$",
    },
    tag = "+viewer",
})

hl.window_rule({
    name  = "windowrule-50",
    match = {
        class = "^(eog|org.gnome.Loupe)$",
    },
    tag = "+viewer",
})

hl.window_rule({
    name  = "windowrule-51",
    match = {
        tag = "KooL_Cheat*",
    },
    center = true,
    float = true,
    size = "(monitor_w*0.65) (monitor_h*0.9)",
})

hl.window_rule({
    name  = "windowrule-52",
    match = {
        class = "([Tt]hunar)",
        title = "negative:(.*[Tt]hunar.*)",
    },
    center = true,
    float = true,
})

hl.window_rule({
    name  = "windowrule-53",
    match = {
        tag = "KooL-Settings*",
    },
    center = true,
    float = true,
})

hl.window_rule({
    name  = "windowrule-54",
    match = {
        title = "^(Keybindings)$",
    },
    center = true,
})

hl.window_rule({
    name  = "windowrule-55",
    match = {
        class = "^([Ww]hatsapp-for-linux|ZapZap|com.rtosta.zapzap)$",
    },
    center = true,
    size = "(monitor_w*0.6) (monitor_h*0.7)",
})

hl.window_rule({
    name  = "windowrule-56",
    match = {
        title = "^(Picture-in-Picture)$",
    },
    move = "((monitor_w*0.72)) ((monitor_h*0.07))",
    float = true,
    opacity = "0.95 0.75",
    pin = true,
    keep_aspect_ratio = true,
})

hl.window_rule({
    name  = "windowrule-im-workspace",
    match = {
        tag = "im*",
    },
    workspace = 2,
})

hl.window_rule({
    name  = "windowrule-57",
    match = {
        fullscreen = true,
    },
    idle_inhibit = "fullscreen",
})

hl.window_rule({
    name  = "windowrule-58",
    match = {
        tag = "wallpaper*",
    },
    float = true,
    opacity = "0.9 0.7",
    size = "(monitor_w*0.7) (monitor_h*0.7)",
})

hl.window_rule({
    name  = "windowrule-59",
    match = {
        tag = "settings*",
    },
    float = true,
    opacity = "0.8 0.7",
    size = "(monitor_w*0.7) (monitor_h*0.7)",
})

hl.window_rule({
    name  = "windowrule-60",
    match = {
        tag = "viewer*",
    },
    float = true,
    opacity = "0.82 0.75",
})

hl.window_rule({
    name  = "windowrule-61",
    match = {
        class = "([Zz]oom|onedriver|onedriver-launcher)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-62",
    match = {
        class = "(org.gnome.Calculator)",
        title = "(Calculator)",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-63",
    match = {
        class = "^(mpv|com.github.rafostar.Clapper)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-64",
    match = {
        class = "^([Qq]alculate-gtk)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-65",
    match = {
        title = "^(Authentication Required)$",
    },
    float = true,
    center = true,
})

hl.window_rule({
    name  = "windowrule-66",
    match = {
        class = "(codium|codium-url-handler|VSCodium)",
        title = "negative:(.*codium.*|.*VSCodium.*)",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-67",
    match = {
        class = "^(com.heroicgameslauncher.hgl)$",
        title = "negative:(Heroic Games Launcher)",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-68",
    match = {
        class = "^([Ss]team)$",
        title = "negative:^([Ss]team)$",
    },
    float = true,
})

hl.window_rule({
    name  = "windowrule-69",
    match = {
        title = "^(Add Folder to Workspace)$",
    },
    float = true,
    size = "(monitor_w*0.7) (monitor_h*0.6)",
    center = true,
})

hl.window_rule({
    name  = "windowrule-70",
    match = {
        initial_title = "(Open Files)",
    },
    float = true,
    size = "(monitor_w*0.7) (monitor_h*0.6)",
})

hl.window_rule({
    name  = "windowrule-71",
    match = {
        title = "^(SDDM Background)$",
    },
    float = true,
    center = true,
    size = "(monitor_w*0.16) (monitor_h*0.12)",
})

hl.window_rule({
    name  = "windowrule-72",
    match = {
        tag = "browser*",
    },
    opacity = "0.9 0.7",
})

hl.window_rule({
    name  = "windowrule-73",
    match = {
        tag = "projects*",
    },
    opacity = "0.9 0.8",
})

hl.window_rule({
    name  = "windowrule-74",
    match = {
        tag = "im*",
    },
    opacity = "0.94 0.86",
})

hl.window_rule({
    name  = "windowrule-75",
    match = {
        tag = "multimedia*",
    },
    opacity = "0.94 0.86",
})

hl.window_rule({
    name  = "windowrule-76",
    match = {
        tag = "file-manager*",
    },
    opacity = "0.9 0.8",
})

hl.window_rule({
    name  = "windowrule-77",
    match = {
        tag = "terminal*",
    },
    opacity = "0.8 0.7",
})

hl.window_rule({
    name  = "windowrule-78",
    match = {
        class = "^(gedit|org.gnome.TextEditor|mousepad)$",
    },
    opacity = "0.8 0.7",
})

hl.window_rule({
    name  = "windowrule-79",
    match = {
        class = "^(deluge)$",
    },
    opacity = "0.9 0.8",
})

hl.window_rule({
    name  = "windowrule-80",
    match = {
        class = "^(im.riot.Riot)$",
    },
    opacity = "0.9 0.8",
})

hl.window_rule({
    name  = "windowrule-81",
    match = {
        class = "^(seahorse)$",
    },
    opacity = "0.9 0.8",
})

hl.window_rule({
    name  = "windowrule-82",
    match = {
        tag = "games*",
    },
    no_blur = true,
    fullscreen = true,
})

hl.layer_rule({
    name  = "layerrule-1",
    match = {
        namespace = "rofi",
    },
    blur = true,
    ignore_alpha = 0,
})

hl.layer_rule({
    name  = "layerrule-2",
    match = {
        namespace = "notifications",
    },
    blur = true,
    ignore_alpha = 0,
})

