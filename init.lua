require('base')
require('highlights')
require('maps')
require('plugins')

local has = function(x)
  return vim.fn.has(x) == 1
end

local is_wsl = has "wsl2"
local is_win = has "win64"

if is_wsl then
  require('wsl')
end
if is_win then
  require('window')
end
