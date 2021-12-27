require'bufferline'.setup{
  options = {
    view = "default",-- "multiwindow"
    numbers = "buffer_id", --"none" | "ordinal"
    -- number_style = "superscript" | "",
    mappings = true,
    buffer_close_icon= '',
    modified_icon = '●',
    kill_maps = true,
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15, -- prefix used when a buffer is deduplicated
    tab_size = 18,
    diagnostics = false, --"nvim_lsp"
    diagnostics_indicator = function(count, level)
      return "("..count..")"
    end,
    show_buffer_close_icons = true,
    show_tab_indicators = true,
    persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
    -- can also be a table containing 2 custom separators
    -- [focused and unfocused]. eg: { '|', '|' }
    separator_style = "slant", -- | "thick" | "thin" | { 'any', 'any' },
    enforce_regular_tabs = false,
    always_show_bufferline = true,
    -- sort_by = 'extension' | 'relative_directory' | 'directory' | function(buffer_a, buffer_b)
    --   -- add custom logic
    --   return buffer_a.modified > buffer_b.modified
    -- end
  }
}
