-- Main Hyprland settings
-- Migrated from: UserConfigs/UserSettings.conf

hl.config({
    dwindle = {
        preserve_split        = true,
        special_scale_factor  = 0.8,
    },

    master = {
        new_status = "master",
        new_on_top  = true,
        mfact       = 0.5,
    },

    general = {
        resize_on_border = true,
        layout           = "hy3",
    },

    input = {
        kb_layout   = "cz",
        kb_variant  = "coder",
        kb_model    = "",
        kb_options  = "",
        kb_rules    = "",
        repeat_rate  = 40,
        repeat_delay = 300,
        sensitivity  = 0,
        numlock_by_default        = true,
        left_handed               = false,
        follow_mouse              = true,
        float_switch_override_focus = false,

        touchpad = {
            disable_while_typing   = true,
            natural_scroll         = true,
            clickfinger_behavior   = false,
            middle_button_emulation = true,
            tap_to_click           = true,
            drag_lock              = false,
            scroll_factor          = 0.3,
        },

        touchdevice = { enabled = true },

        tablet = {
            transform   = 0,
            left_handed = false,
        },
    },

    misc = {
        disable_hyprland_logo     = true,
        disable_splash_rendering  = true,
        vrr                       = 2,
        mouse_move_enables_dpms   = true,
        enable_swallow            = false,
        swallow_regex             = "^(kitty)$",
        focus_on_activate         = false,
        initial_workspace_tracking = 0,
        middle_click_paste        = false,
    },

    binds = {
        workspace_back_and_forth = false,
        allow_workspace_cycles   = true,
        pass_mouse_when_bound    = false,
    },

    xwayland = {
        enabled           = true,
        force_zero_scaling = true,
    },

    cursor = {
        sync_gsettings_theme     = true,
        no_hardware_cursors      = 2,
        enable_hyprcursor        = true,
        warp_on_change_workspace = 2,
        no_warps                 = true,
    },
})

-- Wacom One tablet: map pen to eDP-1 panel regardless of active monitor
hl.device({ name = "wacom-one-by-wacom-m-pen", output = "eDP-1" })

-- 3-finger swipe gestures (left = next workspace, right = prev)
hl.gesture({ fingers = 3, direction = "left",  action = "workspace", workspace_name = "e+1" })
hl.gesture({ fingers = 3, direction = "right", action = "workspace", workspace_name = "e-1" })
