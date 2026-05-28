-- Monitor profile: home dual-monitor setup (MAG274Q + Samsung, laptop display off)
hl.monitor({ output = "eDP-1", disabled = true })
hl.monitor({
    output   = "desc:Samsung Electric Company S24F350 H4ZK102336",
    mode     = "1920x1080@60.0",
    position = "2560x0",
    scale    = 1.0,
})
hl.monitor({
    output   = "desc:Microstep MAG274Q QD E2 CC2HC24301384",
    mode     = "2560x1440@144.0",
    position = "0x0",
    scale    = 1.0,
})
