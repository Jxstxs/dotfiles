local status_ok, keystack = pcall(require, "keystack")
if not status_ok then
  return
end

keystack.config({
    mappings = {
        ["page_moving"] = {
            maps = {
                ["j"] = "<C-D>",
                ["k"] = "<C-U>",
            }
        },
        ["hunk_moving"] = {
            maps = {
                ["j"] = "<cmd>Gitsigns next_hunk<CR>",
                ["k"] = "<cmd>Gitsigns previous_hunk<CR>",
            }
        },
        ["diagnostic_moving"] = {
            maps = {
                ["j"] = "<cmd>Lspsaga diagnostic_jump_next<CR>",
                ["k"] = "<cmd>Lspsaga diagnostic_jump_prev<CR>",
            }
        },
    }
})
