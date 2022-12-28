vim.keymap.set('n', '<leader>h', function()
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
    vim.cmd('e ' .. open_filepath);
end)
