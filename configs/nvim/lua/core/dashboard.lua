-- ~/.config/nvim/lua/core/dashboard.lua
local M = {}

local function create_window()
    -- create a floating window
    local buf = vim.api.nvim_create_buf(false, true)
    local width = math.floor(vim.o.columns * 0.7)
    local height = math.floor(vim.o.lines * 0.7)
    local row = math.floor((vim.o.lines - height) / 2)
    local col = math.floor((vim.o.columns - width) / 2)

    local opts = {
        style = "minimal",
        relative = "editor",
        width = width,
        height = height,
        row = row,
        col = col,
        border = "rounded",
    }

    local win = vim.api.nvim_open_win(buf, true, opts)
    return buf, win
end

local function list_keymaps()
    local keymaps = vim.api.nvim_get_keymap('n')
    local lines = { "=== NORMAL MODE KEYMAPS ===" }
    for _, km in ipairs(keymaps) do
        table.insert(lines, string.format("%s -> %s", km.lhs, km.rhs))
    end
    return lines
end

local function list_autocmds()
    local acmds = vim.api.nvim_get_autocmds({})
    local lines = { "=== AUTOCMDS ===" }
    for _, ac in ipairs(acmds) do
        table.insert(lines, string.format("[%s] %s -> %s", ac.event, ac.pattern or "", ac.command or ""))
    end
    return lines
end

local function list_plugins()
    local lines = { "=== PLUGINS (Lazy.nvim) ===" }
    local lazy = require("lazy")
    for name, plugin in pairs(lazy.plugins()) do
        table.insert(lines, string.format("%s [%s]", name, plugin.loaded and "loaded" or "lazy"))
    end
    return lines
end

function M.show_dashboard()
    local buf, win = create_window()
    local content = {}

    vim.list_extend(content, list_keymaps())
    table.insert(content, "")
    vim.list_extend(content, list_autocmds())
    table.insert(content, "")
    vim.list_extend(content, list_plugins())

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, content)
    vim.api.nvim_buf_set_option(buf, "modifiable", false)
    vim.api.nvim_buf_set_option(buf, "bufhidden", "wipe")
end

return M

