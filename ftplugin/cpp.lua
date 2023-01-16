function go_to_hpp_cpp()
    local filepath = vim.fn.expand('%:p');
    local extension = vim.fn.expand('%:e');
    local open_filepath = "";
    if extension == 'h' or extension == 'hpp' then
        open_filepath = string.gsub(filepath, "inc", "src");
        open_filepath = string.gsub(open_filepath, "%.h", "%.c");
    elseif extension == 'c' or extension == 'cpp' then
        open_filepath = string.gsub(filepath, "src", "inc");
        open_filepath = string.gsub(open_filepath, "%.c", "%.h");
    end
    vim.cmd('e ' .. open_filepath)
end

function write_preprocessor_anticircular()
    local preprocessing_name = string.upper(vim.fn.expand("%:t:r")) .. "_H_"
    vim.api.nvim_buf_set_lines(0, 0, 0, false, {
        "#ifndef " .. preprocessing_name,
        "#define " .. preprocessing_name,
        "",
        ""
    })
    vim.api.nvim_buf_set_lines(0, -1, -1, false, { "", "", "#endif" })
end

function fill_hpp()
    write_preprocessor_anticircular()
    local filename = vim.fn.expand("%:t:r")
    vim.api.nvim_buf_set_lines(0, 4, 4, false, {
        "class " .. filename .. " {",
        "",
        "};"
    })
end

vim.keymap.set('n', '<leader>hh', function()
    go_to_hpp_cpp()
end)
vim.keymap.set('n', '<leader>hp', function()
    write_preprocessor_anticircular()
end)
vim.keymap.set('n', '<leader>hf', function()
    fill_hpp()
end)
