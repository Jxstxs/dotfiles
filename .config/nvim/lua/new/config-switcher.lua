
local status_ok, cs = pcall(require, "config-switcher")
if not status_ok then
    return
end

cs.config({
    config_paths = {
        { "dev", "/home/julius/.dotf/configs/nvim/basic-new.lua" },
        { "wiki", "/home/julius/.dotf/configs/nvim/wiki.lua" },
    }
})
