local tym = require('tym')

-- set config individually
tym.set('width', 100)

tym.set('font', 'JetBrains Mono Regular 12')

-- set by table
tym.set_config({
  title = 'tym',
  shell = '/usr/bin/fish',
  cursor_shape = 'underline',
  cursor_blink_mode = 'on',
  scrollback_length = 1000,
  -- background_image = '/xd/Temporales/CONFIG/wallper/iron-man-fly-view.png',
  autohide = true,
})

-- ATAJOS DE TECLADO

tym.set_keymap('<Ctrl><Shift>o', function()
  local h = tym.get('height')
  tym.set('height', h + 1)
  tym.notify('Set window height :' .. h)
end)

function update_alpha(delta)
  r, g, b, a = tym.color_to_rgba(tym.get('color_background'))
  a = math.max(math.min(1.0, a + delta), 0.0)
  bg = tym.rgba_to_color(r, g, b, a)
  tym.set('color_background', bg)
  tym.notify(string.format('%s alpha to %f', (delta > 0 and 'Inc' or 'Dec'), a))
end

tym.set_keymaps({
  ['<Ctrl><Shift>Up'] = function()
    update_alpha(0.05)
  end,
  ['<Ctrl><Shift>Down'] = function()
    update_alpha(-0.05)
  end,
})

tym.set_hook('scroll', function(dx, dy, x, y)
  if tym.check_mod_state('<Ctrl>') then
    if dy > 0 then
      s = tym.get('scale') - 10
    else
      s = tym.get('scale') + 10
    end
    tym.set('scale', s)
    tym.notify('set scale: ' .. s .. '%')
    return true
  end
  if tym.check_mod_state('<Shift>') then
    update_alpha(dy < 0 and 0.05 or -0.05)
    return true
  end
end)

-- set by table
-- tym.set_keymaps({
--   ['<Ctrl><Shift>t'] = function()
--     tym.reload()
--     tym.notify('reload config')
--   end,
--   ['<Ctrl><Shift>v'] = function()
--     -- reload and notify
--     tym.send_key('<Ctrl><Shift>t')
--   end,

--   ['<Shift>y'] = function()
--     tym.notify('Y has been pressed')
--     return true -- notification is shown and `Y` will be inserted
--   end,
--   ['<Shift>w'] = function()
--     tym.notify('W has been pressed')
--     -- notification is shown but `W` is not inserted
--   end,
-- })
