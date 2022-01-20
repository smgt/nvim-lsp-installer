local server = require "nvim-lsp-installer.server"
local go = require "nvim-lsp-installer.installers.go"

return function(name, root_dir)
    return server.Server:new {
        name = name,
        root_dir = root_dir,
        homepage = "https://github.com/mattn/efm-langserver",
        languages = {},
        installer = go.package "github.com/mattn/efm-langserver",
        default_options = {
            cmd_env = go.env(root_dir),
        },
    }
end
