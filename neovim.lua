--                                                                    
--                                                                    
-- ,gggggggggggg,    ,ggg,         gg  ,ggg, ,ggggggg,     ,ggggggg,  
-- dP"""88""""""Y8b, dP""Y8a        88 dP""Y8,8P"""""Y8b  ,dP""""""Y8b
-- Yb,  88       `8b,Yb, `88        88 Yb, `8dP'     `88  d8'    a  Y8
--  `"  88        `8b `"  88        88  `"  88'       88  88     "Y8P'
--      88         Y8     88        88      88        88  `8baaaa     
--      88         d8     88        88      88        88 ,d8P""""     
--      88        ,8P     88        88      88        88 d8"          
--      88       ,8P'     88        88      88        88 Y8,          
--      88______,dP'      Y8b,____,d88,     88        Y8,`Yba,,_____, 
--     888888888P"         "Y888888P"Y8     88        `Y8  `"Y8888888 
--                                                                    
--                                                                    
--                                                                    
--                                                                    

return {
  {
    dir = vim.fn.expand("~/.config/omarchy/current/theme"),
    name = "dune",
    priority = 1000,
    lazy = false,
    opts = {
      transparent = false,
      italic_comments = true,
      dim_inactive = false,
      terminal_colors = true,
      overrides = {},
    },
    config = function(_, opts)
      require("dune").setup(opts)
      vim.cmd.colorscheme("dune")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "dune",
    },
  },
}

-- ░░      ░░░  ░░░░░░░░       ░░                              
-- ▒  ▒▒▒▒  ▒▒  ▒▒▒▒▒▒▒▒  ▒▒▒▒  ▒                              
-- ▓  ▓▓▓▓  ▓▓  ▓▓▓▓▓▓▓▓  ▓▓▓▓  ▓                              
-- █  ████  ██  ████████  ████  █                              
-- ██      ███        ██       ██                              
--                                                             
-- ░        ░░░      ░░░       ░░░░      ░░░       ░░░░      ░░
-- ▒▒▒▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒▒  ▒▒▒▒  ▒
-- ▓▓▓▓▓▓▓  ▓▓  ▓▓▓▓  ▓▓       ▓▓▓  ▓▓▓▓  ▓▓       ▓▓▓  ▓▓▓▓  ▓
-- █  ████  ██  ████  ██  ████  ██  ████  ██  ████  ██  ████  █
-- ██      ████      ███       ████      ███       ████      ██
--                                                             