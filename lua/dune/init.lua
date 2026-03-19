local M = {}

function M.setup(opts)
  require("dune.theme").setup(opts)
end

function M.load()
  require("dune.theme").load()
end

return M
