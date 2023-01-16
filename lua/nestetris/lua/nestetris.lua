local api = vim.api
local buf, win
local tetrominoes = {
    I={{0, 1}, {1, 1}, {2, 1}, {3, 1}},
    J={{0, 0}, {0, 1}, {1, 1}, {2, 1}},
    L={{2, 0}, {0, 1}, {1, 1}, {2, 1}},
    O={{0, 0}, {0, 1}, {1, 1}, {1, 0}},
    S={{0, 1}, {1, 1}, {1, 0}, {2, 0}},
    T={{0, 1}, {1, 1}, {1, 0}, {2, 1}},
    Z={{0, 0}, {1, 0}, {1, 1}, {2, 1}}
}


local function nestetris()

end

return {
    nestetris = nestetris,
}
