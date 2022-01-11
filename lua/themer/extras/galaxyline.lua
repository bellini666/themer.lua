local hi = {}

---set galaxyline_colors
---@param cs string
---@param cp table
function hi.get(cs, cp)
    local present, galaxyline_colors = pcall(require, "galaxyline.themes.colors")
    if not present then
        return
    end

    galaxyline_colors[cs or require("themer.config")("get").colorscheme] = {
        bg = cp.bg.alt,
        fg = cp.fg,
        fg_alt = cp.dimmed.subtle,
        yellow = cp.yellow,
        cyan = cp.cyan,
        green = cp.green,
        orange = cp.orange,
        magenta = cp.magenta,
        blue = cp.blue,
        red = cp.red,
    }
end

return hi
