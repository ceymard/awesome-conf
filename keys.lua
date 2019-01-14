

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

local function add_key(tbl, desc, fn, opts)

end

function keys.global(desc, fn, opts)
  return add_key(keys.globalkeys, desc, fn, opts)
end

function keys.client(desc, fn, opts)
  return add_key(keys.clientkeys, desc, fn, opts)
end

return keys
