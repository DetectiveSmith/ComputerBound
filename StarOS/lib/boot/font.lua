local f, t = false, true
font = {
    width = 5, height = 7,
    
    [" "] = {},

    ["'"] = {f,f,t,f,f, f,f,t,f,f},
    [","] = {f,t,t,f,f, f,t,t,f,f, f,f,f,t,f, f,f,t,f,f, offset = 5},
    ["-"] = {t,t,t,t,t, offset = 3},
    ["."] = {f,t,t,f,f, f,t,t,f,f, offset = 5},
    ["/"] = {f,f,f,f,t, f,f,f,f,t, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, t,f,f,f,f, t,f,f,f,f},

    ["0"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,t,t, t,f,t,f,t, t,t,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["1"] = {f,f,t,f,f, f,t,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,t,t,t,f},
    ["2"] = {f,t,t,t,f, t,f,f,f,t, f,f,f,f,t, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, t,t,t,t,t},
    ["3"] = {f,t,t,t,f, t,f,f,f,t, f,f,f,f,t, f,f,t,t,f, f,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["4"] = {f,f,f,t,f, f,f,t,t,f, f,t,f,t,f, t,f,f,t,f, t,t,t,t,t, f,f,f,t,f, f,f,f,t,f},
    ["5"] = {t,t,t,t,t, t,f,f,f,f, t,t,t,t,f, f,f,f,f,t, f,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["6"] = {f,f,t,t,f, f,t,f,f,f, t,f,f,f,f, t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["7"] = {t,t,t,t,t, f,f,f,f,t, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, t,f,f,f,f, t,f,f,f,f},
    ["8"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["9"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, f,t,t,t,t, f,f,f,f,t, f,f,f,t,f, f,t,t,f,f},

    [";"] = {f,t,t,f,f, f,t,t,f,f, f,f,f,f,f, f,t,t,f,f, f,t,t,f,f, f,f,t,f,f, f,t,f,f,f, offset = 1},
    ["="] = {f,f,f,f,f, f,f,f,f,f, t,t,t,t,t, f,f,f,f,f, t,t,t,t,t},
    ["["] = {f,t,t,t,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,t,t,t,f},
    ["\\"] = {t,f,f,f,f, t,f,f,f,f, f,t,f,f,f, f,f,t,f,f, f,f,f,t,f, f,f,f,f,t, f,f,f,f,t},
    ["]"] = {f,t,t,t,f, f,f,f,t,f, f,f,f,t,f, f,f,f,t,f, f,f,f,t,f, f,f,f,t,f, f,t,t,t,f},
    ["`"] = {f,t,f,f,f, f,f,t,f,f},

    ["a"] = {f,t,t,f,t, t,f,f,t,t, t,f,f,f,t, t,f,f,t,t, f,t,t,f,t, offset = 2},
    ["b"] = {t,f,f,f,f, t,f,f,f,f, t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,t,t,t,f},
    ["c"] = {f,t,t,t,t, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f, f,t,t,t,t, offset = 2},
    ["d"] = {f,f,f,f,t, f,f,f,f,t, f,t,t,t,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,t},
    ["e"] = {f,t,t,t,f, t,f,f,f,t, t,t,t,t,t, t,f,f,f,f, f,t,t,t,t, offset = 2},
    ["f"] = {f,f,t,f,f, f,t,f,t,f, f,t,f,f,f, t,t,t,f,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f},
    ["g"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,t, f,f,f,f,t, f,t,t,t,f, offset = 2},
    ["h"] = {t,f,f,f,f, t,f,f,f,f, t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t},
    ["i"] = {f,f,t,f,f, f,f,f,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,f,t,f},
    ["j"] = {f,f,t,f,f, f,f,f,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,t,f,f,f}, -- I know this isn't the correct j for the font, but i'm too lazy to fix it.
    ["k"] = {t,f,f,f,f, t,f,f,f,f, t,f,f,f,t, t,f,f,t,f, t,f,t,f,f, t,t,f,t,f, t,f,f,f,t},
    ["l"] = {f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,f,t,f,f},
    ["m"] = {t,t,f,t,f, t,f,t,f,t, t,f,t,f,t, t,f,t,f,t, t,f,t,f,t, offset = 2},
    ["n"] = {t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, offset = 2},
    ["o"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,f, offset = 2},
    ["p"] = {t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,t,t,t,f, t,f,f,f,f, t,f,f,f,f, offset = 2},
    ["q"] = {f,t,t,t,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,t, f,f,f,f,t, f,f,f,f,t, offset = 2},
    ["r"] = {t,f,t,t,f, t,t,f,f,t, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f, offset = 2},
    ["s"] = {f,t,t,t,f, t,f,f,f,f, f,t,t,t,f, f,f,f,f,t, f,t,t,t,f, offset = 2},
    ["t"] = {f,f,t,f,f, f,f,t,f,f, f,t,t,t,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,f,t,t},
    ["u"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,t, offset = 2},
    ["v"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,f,t,f, f,f,t,f,f, offset = 2},
    ["w"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,t,f,t, f,t,f,t,f, offset = 2},
    ["x"] = {t,f,f,f,t, f,t,f,t,f, f,f,t,f,f, f,t,f,t,f, t,f,f,f,t, offset = 2},
    ["y"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,t, f,f,f,f,t, f,t,t,t,f, offset = 2},
    ["z"] = {t,t,t,t,t, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, t,t,t,t,t, offset = 2},

    ["A"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,t,t,t,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t},
    ["B"] = {t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,t,t,t,f},
    ["C"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f, t,f,f,f,t, f,t,t,t,f},
    ["D"] = {t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,t,t,t,f},
    ["E"] = {t,t,t,t,t, t,f,f,f,f, t,f,f,f,f, t,t,t,t,f, t,f,f,f,f, t,f,f,f,f, t,t,t,t,t},
    ["F"] = {t,t,t,t,t, t,f,f,f,f, t,f,f,f,f, t,t,t,t,f, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f},
    ["G"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,f, t,f,f,t,t, t,f,f,f,t, f,t,t,t,f},
    ["H"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,t,t,t,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t},
    ["I"] = {f,t,t,t,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,t,t,t,f},
    ["J"] = {f,f,f,f,t, f,f,f,f,t, f,f,f,f,t, f,f,f,f,t, f,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["K"] = {t,f,f,f,t, t,f,f,t,f, t,f,t,f,f, t,t,f,f,f, t,f,t,f,f, t,f,f,t,f, t,f,f,f,t},
    ["L"] = {t,f,f,f,f, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f, t,t,t,t,t},
    ["M"] = {t,f,f,f,t, t,t,f,t,t, t,f,t,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t},
    ["N"] = {t,f,f,f,t, t,f,f,f,t, t,t,f,f,t, t,f,t,f,t, t,f,f,t,t, t,f,f,f,t, t,f,f,f,t},
    ["O"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["P"] = {t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,t,t,t,f, t,f,f,f,f, t,f,f,f,f, t,f,f,f,f},
    ["Q"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,t,f,t, t,f,f,t,f, f,t,t,f,t},
    ["R"] = {t,t,t,t,f, t,f,f,f,t, t,f,f,f,t, t,t,t,t,f, t,f,t,f,f, t,f,f,t,f, t,f,f,f,t},
    ["S"] = {f,t,t,t,f, t,f,f,f,t, t,f,f,f,f, f,t,t,t,f, f,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["T"] = {t,t,t,t,t, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f},
    ["U"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,t,t,f},
    ["V"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, f,t,f,t,f, f,f,t,f,f},
    ["W"] = {t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,f,f,t, t,f,t,f,t, t,f,t,f,t, f,t,f,t,f},
    ["X"] = {t,f,f,f,t, t,f,f,f,t, f,t,f,t,f, f,f,t,f,f, f,t,f,t,f, t,f,f,f,t, t,f,f,f,t},
    ["Y"] = {t,f,f,f,t, t,f,f,f,t, f,t,f,t,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f},
    ["Z"] = {t,t,t,t,t, f,f,f,f,t, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, t,f,f,f,f, t,t,t,t,t},

    ['"'] = {f,t,f,t,f, f,t,f,t,f},
    ["<"] = {f,f,f,f,t, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, f,f,t,f,f, f,f,f,t,f, f,f,f,f,t},
    ["_"] = {t,t,t,t,t, offset = 6},
    [">"] = {t,f,f,f,f, f,t,f,f,f, f,f,t,f,f, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, t,f,f,f,f},
    ["?"] = {f,t,t,t,f, t,f,f,f,t, f,f,f,f,t, f,f,f,t,f, f,f,t,f,f, f,f,f,f,f, f,f,t,f,f},

    ["!"] = {f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,f,f,f, f,f,t,f,f},
    ["@"] = {f,t,t,t,f, t,f,f,f,t, t,f,t,t,t, t,f,t,f,t, t,f,t,t,t, t,f,f,f,f, f,t,t,t,f},
    ["#"] = {f,t,f,t,f, f,t,f,t,f, t,t,t,t,t, f,t,f,t,f, t,t,t,t,t, f,t,f,t,f, f,t,f,t,f},
    ["$"] = {f,t,t,t,f, t,f,t,f,f, t,f,t,f,f, f,t,t,t,f, f,f,t,f,t, f,f,t,f,t, f,t,t,t,f},
    ["%"] = {t,t,f,f,t, t,t,f,f,t, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, t,f,f,t,t, t,f,f,t,t},
    ["^"] = {f,f,t,f,f, f,t,f,t,f, t,f,f,f,t},
    ["&"] = {f,t,f,f,f, t,f,t,f,f, t,f,t,f,f, f,t,f,f,f, t,f,t,f,t, t,f,f,t,f, f,t,t,f,t},
    ["*"] = {f,f,t,f,f, t,f,t,f,t, f,t,t,t,f, f,f,t,f,f, f,t,t,t,f, t,f,t,f,t, f,f,t,f,f},
    ["("] = {f,f,f,t,f, f,f,t,f,f, f,t,f,f,f, f,t,f,f,f, f,t,f,f,f, f,f,t,f,f, f,f,f,t,f},
    [")"] = {f,t,f,f,f, f,f,t,f,f, f,f,f,t,f, f,f,f,t,f, f,f,f,t,f, f,f,t,f,f, f,t,f,f,f},

    [":"] = {f,t,t,f,f, f,t,t,f,f, f,f,f,f,f, f,t,t,f,f, f,t,t,f,f, offset = 1},
    ["+"] = {f,f,f,f,f, f,f,t,f,f, f,f,t,f,f, t,t,t,t,t, f,f,t,f,f, f,f,t,f,f},
    ["{"] = {f,f,f,t,f, f,f,t,f,f, f,f,t,f,f, f,t,f,f,f, f,f,t,f,f, f,f,t,f,f, f,f,f,t,f},
    ["|"] = {f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f, f,f,t,f,f},
    ["}"] = {f,t,f,f,f, f,f,t,f,f, f,f,t,f,f, f,f,f,t,f, f,f,t,f,f, f,f,t,f,f, f,t,f,f,f},
    ["~"] = {f,t,f,t,f, t,f,t,f,f}
}