local api = vim.api
local buf, win
local bf_array = {}
local bf_cursor = 0



local function center(str)
    local width = api.nvim_win_get_width(win)
    local shift = math.floor(width / 2) - math.floor(string.len(str) / 2)
    return string.rep(' ', shift) .. str
end

local function init_bf_array(t)
    setmetatable(t,{__index={size=100}})
    local size = t[1] or t.size
    bf_array = {}
    for i=1, size do
        bf_array[i] = 0
    end
end

local function arraytostring(array)
    s = ""
    for i, v in ipairs(array) do
        if i == 1 then
            s = v
        else
            s = s .. "," .. v
        end

    end
    return s
end

local function display_bf_array()
    local bf_array_str = arraytostring(bf_array)
    local width = api.nvim_win_get_width(win)
    local shift = math.floor(width / 2)
    bf_array_str = string.rep(' ', shift) .. bf_array_str
    api.nvim_buf_set_lines(buf, 3, -1, false, {bf_array_str})
end


local function open_window()
    -- Create a non-listed scratch buffer --
    buf = api.nvim_create_buf(false, true)

    -- Some buffer option --
    api.nvim_buf_set_option(buf, 'bufhidden', 'wipe')
    api.nvim_buf_set_option(buf, 'filetype', 'bfviz')


    -- Compute the window size --
    local width = api.nvim_get_option("columns")
    local height = api.nvim_get_option("lines")

    local win_height = math.ceil(height * 0.8 - 4)
    local win_width = math.ceil(width * 0.8)
    local row = math.ceil((height - win_height) / 2 - 1)
    local col = math.ceil((width - win_width) / 2)

    local opts = {
        style = "minimal",
        relative = "editor",
        width = win_width,
        height = win_height,
        row = row,
        col = col
    }

    -- Create the window --
    win = api.nvim_open_win(buf, false, opts)

    -- Add the title --
    api.nvim_buf_set_lines(buf, 0, -1, false, { center('BrainFuck visualizer'), '', ''})
end



local function bfviz()
    position = 0
    open_window()
    init_bf_array{}
    display_bf_array()
end

return {
    bfviz = bfviz,
}
