local M = {}
local function vim_opt_runtimepath()
	vim.print("========== vim_opt_runtimepath start =======")
	vim.print("vim.opt.runtimepath")
	vim.print(vim.opt.runtimepath)
	vim.print("========== vim_cmd_function end =======")
	return nil
end

local function vim_opt_packpath()
	vim.print("========== vim_opt_packpath start =======")
	vim.print("vim.opt.packpath")
	vim.print(vim.opt.packpath)
	vim.print("========== vim_opt_packpath end =======")
end
M.run_opt = function(opt_name)
	if opt_name == nil then
		vim_opt_runtimepath()
		vim_opt_packpath()
	end
	if opt_name == "vim.opt.runtimepath" then
		vim_opt_runtimepath()
	end
	if opt_name == "vim.opt.packpath" then
		vim_opt_packpath()
	end
end

return M
