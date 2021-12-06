local server = require "nvim-lsp-installer.server"
local go = require "nvim-lsp-installer.installers.go"

return function(name, root_dir)
    return server.Server:new {
        name = name,
        root_dir = root_dir,
        homepage = "https://github.com/nametake/golangci-lint-langserver",
        languages = { "go" },
        installer = go.packages {
            "github.com/nametake/golangci-lint-langserver",
            "github.com/golangci/golangci-lint/cmd/golangci-lint",
        },
        default_options = {
            cmd = { go.executable(root_dir, "golangci-lint-langserver") },
        },
    }
end
