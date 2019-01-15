
local awful = require('awful')
local gears = require('gears')

local keys = {
  globalkeys = {},
  clientkeys = {}
}

-- Get Mod4 / Shift / Ctrl combinations from desc
local function get_modifiers(desc)

end

-- Get the non-modifier part of the key
local function get_key(desc)

end

local MODS = {
  win = 'Mod4',
  alt = 'Mod1',
  shift = 'Shift',
  ctrl = 'Control',
  control = 'Control'
}

local function add_key(tbl, desc, fn, opts)
  local mods = {}
  for k in string.gmatch(desc, "%g+") do
    if MODS[string.lower(k)] then
      k = MODS[string.lower(k)]
    end
    table.insert(mods, k)
  end

  local key = table.remove(mods)

  opts = opts or {}

  -- gears.debug.print_warning(gears.debug.dump_return(mods))
  for k, v in pairs(awful.key(mods, key, fn, opts)) do
    if type(k) == 'number' then
      table.insert(tbl, v)
    else
      tbl[k] = v
    end
  end
  return keys
end

function keys.global(desc, fn, opts)
  return add_key(keys.globalkeys, desc, fn, opts)
end

function keys.client(desc, fn, opts)
  return add_key(keys.clientkeys, desc, fn, opts)
end

return keys
