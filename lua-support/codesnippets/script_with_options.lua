-- script name, version and help text
local script_name    = 'TODO'
local script_version = '1.0'

local help_text_short = script_name..' [options]'

local help_text = help_text_short..'\n\n'..[[
Options:
	--str <opt>       set a string

	--lit             a switch

	-h, --help        print this help
	-v, --version     print version information
]]

-- check for "--help" and "--version", exit
for idx, arg in ipairs ( arg ) do
	if arg == '-h' or arg == '--help' then
		print ( help_text )
		return
	elseif arg == '-v' or arg == '--version' then
		print ( 'version '..script_version )
		return
	end
end

local options = {
	lit = false,
	str = 'qwertzu',
}

-- go through arguments
local idx = 1

while idx <= #arg do
	
	if arg[idx] == '--lit' then
		options.lit = true
		idx = idx + 1
	elseif arg[idx] == '--str' then
		options.str = arg[idx+1]
		idx = idx + 2
	elseif arg[idx] == '-h' or arg[idx] == '--help' or arg[idx] == '-v' or arg[idx] == '--version' then
		-- noop
		idx = idx + 1
	else
		print ( 'Unknown option: '..arg[idx] )
		print ( '' )
		return
	end

end

