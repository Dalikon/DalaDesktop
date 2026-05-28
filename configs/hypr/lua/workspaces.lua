-- Workspace rules
-- Migrated from: workspaces.conf

local home = os.getenv("HOME")

-- Workspace 1 pinned to primary (MAG274Q)
hl.workspace_rule({
    workspace = "1",
    monitor   = "desc:Microstep MAG274Q QD E2 CC2HC24301384",
    default   = true,
})

-- Workspace 2 pinned to secondary (Samsung)
hl.workspace_rule({
    workspace = "2",
    monitor   = "desc:Samsung Electric Company S24F350 H4ZK102336",
    default   = true,
})

-- Special workflow workspace: opens Brave with workflow page on creation
hl.workspace_rule({
    workspace        = "special:workflow",
    on_created_empty = "brave-browser --new-window " .. home .. "/.config/hypr/workflow.html",
})
