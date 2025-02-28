local M = {}
local defaults = {
	default = {
		dir_path = "assets", ---@type string
	},
}
---@param config_opts? table
function M.setup(config_opts)
	M.opts = vim.tbl_deep_extend("force", {}, defaults, config_opts or {})
	vim.print("config.lua setup()")
end

return M
