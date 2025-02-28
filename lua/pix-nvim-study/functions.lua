local M = {}
local function vim_cmd_function()
	vim.print("========== vim_cmd_function start =======")
	vim.print("vim.cmd('echo \"hello world!\"')")
	vim.cmd('echo "hello world!"')
	vim.print("========== vim_cmd_function end =======")
	return nil
end

local function debug_info_function()
	vim.print("========== debug_info_function start =======")
	vim.print("debug.getinfo(1)")
	vim.print(debug.getinfo(1))
	vim.print("========== debug_info_function end =======")
end

local function vim_loop_fs_stat()
	vim.print("========== vim_loop_fs_stat start =======")
	vim.print('vim.loop.fs_stat("/home/pix/.config/nvim")')
	vim.print(vim.loop.fs_stat("/home/pix/.config/nvim"))
	vim.print("========== vim_loop_fs_stat end =======")
end
M.run_function = function(function_name)
	if function_name == nil then
		vim_cmd_function()
		debug_info_function()
		vim_loop_fs_stat()
	end
	if function_name == "vim.cmd" then
		vim_cmd_function()
	end
	if function_name == "debug.info" then
		debug_info_function()
	end
	if function_name == "vim.loop.fs_stat" then
		vim_loop_fs_stat()
	end
	-- TODO:vim.fn.mkdir()
	-- TODO:vim.fn.system()
end

return M
