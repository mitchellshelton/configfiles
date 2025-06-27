local dashboard = require("alpha.themes.dashboard")
local alpha = require("alpha")
dashboard.section.header.val = {
  [[                              ]],
  [[                       00     ]],
  [[                     0000     ]],
  [[           00      00  00     ]],
  [[         0000    00    00     ]],
  [[       00  00  00  00  00     ]],
  [[ 000000  000000  0000  000000 ]],
  [[       00  00  00  00  00     ]],
  [[         0000    00    00     ]],
  [[           00      00  00     ]],
  [[                     0000     ]],
  [[                       00     ]],
  [[                              ]],
}

dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find file",       "<cmd> lua LazyVim.pick()() <cr>"),
  dashboard.button("n", " " .. " New file",        [[<cmd> ene <BAR> startinsert <cr>]]),
  dashboard.button("r", " " .. " Recent files",    [[<cmd> lua LazyVim.pick("oldfiles")() <cr>]]),
  dashboard.button("g", " " .. " Find text",       [[<cmd> lua LazyVim.pick("live_grep")() <cr>]]),
  dashboard.button("c", " " .. " Config",          "<cmd> lua LazyVim.pick.config_files()() <cr>"),
  dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
  dashboard.button("x", " " .. " Lazy Extras",     "<cmd> LazyExtras <cr>"),
  dashboard.button("l", "󰒲 " .. " Lazy",            "<cmd> Lazy <cr>"),
  dashboard.button("q", " " .. " Quit",            "<cmd> qa <cr>"),
}

for _, button in ipairs(dashboard.section.buttons.val) do
  button.opts.hl = "AlphaButtons"
  button.opts.hl_shortcut = "AlphaShortcut"
end
dashboard.section.header.opts.hl = "AlphaHeader"
dashboard.section.buttons.opts.hl = "AlphaButtons"
dashboard.section.footer.opts.hl = "AlphaFooter"
dashboard.opts.layout[1].val = 1

alpha.setup({
  layout = {
    {
      type = "text",
      val = dashboard.section.header.val,
      opts = { position = "center", hl = "AlphaHeader" },
    },
    { type = "padding", val = 0 },
    {
      type = "group",
      opts = { position = "center" },
      val = dashboard.section.buttons.val,
    },
  },
})


