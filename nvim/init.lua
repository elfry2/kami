-- Clone 'mini.nvim' manually in a way that it gets managed by 'mini.deps'
local path_package = vim.fn.stdpath('data') .. '/site/'
local mini_path = path_package .. 'pack/deps/start/mini.nvim'
if not vim.loop.fs_stat(mini_path) then
	vim.cmd('echo "Installing `mini.nvim`" | redraw')
	local clone_cmd = {
		'git', 'clone', '--filter=blob:none',
		'https://github.com/nvim-mini/mini.nvim', mini_path
	}
	vim.fn.system(clone_cmd)
	vim.cmd('packadd mini.nvim | helptags ALL')
	vim.cmd('echo "Installed `mini.nvim`" | redraw')
end

-- Set up 'mini.deps' (customize to your liking)
require('mini.deps').setup({ path = { package = path_package } })

MiniDeps.add({ name = 'mini.nvim', checkout = 'stable' })

-- Get the operating system name.
-- Source: https://gist.github.com/Zbizu/43df621b3cd0dc460a76f7fe5aa87f30.
function get_os()
	-- ask LuaJIT first
	if jit then
		return jit.os
	end

	-- Unix, Linux variants
	local fh,err = assert(io.popen("uname -o 2>/dev/null","r"))
	if fh then
		osname = fh:read()
	end

	return osname or "Windows"
end

-- Get all files in the given directory.
-- Source: https://stackoverflow.com/a/11130774
function scandir(directory)
	local i, t, popen = 0, {}, io.popen

	local command = 'ls -a "'..directory..'"'

	if get_os() == 'Windows' then
		command = 'dir "'..directory..'" /b'
	end

	local pfile = popen(command)

	for filename in pfile:lines() do
		i = i + 1
		t[i] = filename
	end
	pfile:close()
	return t
end

-- Get config path.
-- Source: https://share.google/aimode/8dG8Qh6hnfLrb5jYG.
local config_path = vim.fn.stdpath('config')

local scripts_path = config_path .. [[\lua\scripts]] 

local scripts = scandir(scripts_path)

for _, script in ipairs(scripts) do
	local script_without_the_extension = script:gsub('%.lua', '')

	-- Has to be in the lua directory to work.
	-- Source: https://neovim.io/doc/user/lua-guide.html
	require('scripts.' .. script_without_the_extension)
end
