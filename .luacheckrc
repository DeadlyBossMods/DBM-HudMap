std = "lua51"
max_line_length = false
exclude_files = {
	".luacheckrc"
}
ignore = {
	"1..", -- Everything related to globals, the LuaLS check is better because it doesn't require us to define every single API functions
	"211", -- Unused local variable
	"212", -- Unused argument
	"43.", -- Shadowing an upvalue, an upvalue argument, an upvalue loop variable.
	"542", -- An empty if branch
}
