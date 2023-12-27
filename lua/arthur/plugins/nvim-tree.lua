-- Auto close nvim tree if it is the last buffer
-- https://github.com/nvim-tree/nvim-tree.lua/pull/1698#issuecomment-1312440956
-- local function tab_win_closed(winnr)
--   local api = require"nvim-tree.api"
--   local tabnr = vim.api.nvim_win_get_tabpage(winnr)
--   local bufnr = vim.api.nvim_win_get_buf(winnr)
--   local buf_info = vim.fn.getbufinfo(bufnr)[1]
--   local tab_wins = vim.tbl_filter(function(w) return w~=winnr end, vim.api.nvim_tabpage_list_wins(tabnr))
--   local tab_bufs = vim.tbl_map(vim.api.nvim_win_get_buf, tab_wins)
--   if buf_info.name:match(".*NvimTree_%d*$") then            -- close buffer was nvim tree
--     -- Close all nvim tree on :q
--     if not vim.tbl_isempty(tab_bufs) then                      -- and was not the last window (not closed automatically by code below)
--       api.tree.close()
--     end
--   else                                                      -- else closed buffer was normal buffer
--     if #tab_bufs == 1 then                                    -- if there is only 1 buffer left in the tab
--       local last_buf_info = vim.fn.getbufinfo(tab_bufs[1])[1]
--       if last_buf_info.name:match(".*NvimTree_%d*$") then       -- and that buffer is nvim tree
--         vim.schedule(function ()
--           if #vim.api.nvim_list_wins() == 1 then                -- if its the last buffer in vim
--             vim.cmd "quit"                                        -- then close all of vim
--           else                                                  -- else there are more tabs open
--             vim.api.nvim_win_close(tab_wins[1], true)             -- then close only the tab
--           end
--         end)
--       end
--     end
--   end
-- end
--
-- vim.api.nvim_create_autocmd("WinClosed", {
--   callback = function ()
--     local winnr = tonumber(vim.fn.expand("<amatch>"))
--     vim.schedule_wrap(tab_win_closed(winnr))
--   end,
--   nested = true
-- })

return {
  -- "nvim-tree/nvim-tree.lua",
  -- dependencies = { "nvim-tree/nvim-web-devicons" },
  -- config = function()
  --   local nvimtree = require("nvim-tree")
  --
  --   -- recommended settings from nvim-tree documentation
  --   vim.g.loaded_netrw = 1
  --   vim.g.loaded_netrwPlugin = 1
  --
  --   -- change color for arrows in tree to light blue
  --   vim.cmd([[ highlight NvimTreeFolderArrowClosed guifg=#3FC5FF ]])
  --   vim.cmd([[ highlight NvimTreeFolderArrowOpen guifg=#3FC5FF ]])
  --
  --   -- configure nvim-tree
  --   nvimtree.setup({
  --     view = {
  --       width = 35,
  --       relativenumber = true,
  --     },
  --     -- change folder arrow icons
  --     renderer = {
  --       indent_markers = {
  --         enable = true,
  --       },
  --       icons = {
  --         glyphs = {
  --           folder = {
  --             arrow_closed = "", -- arrow when folder is closed
  --             arrow_open = "", -- arrow when folder is open
  --           },
  --         },
  --       },
  --     },
  --     -- disable window_picker for
  --     -- explorer to work well with
  --     -- window splits
  --     actions = {
  --       open_file = {
  --         window_picker = {
  --           enable = false,
  --         },
  --       },
  --     },
  --     filters = {
  --       custom = { ".DS_Store" },
  --     },
  --     git = {
  --       ignore = false,
  --     },
  --   })
  --
  --   -- set keymaps
  --   local keymap = vim.keymap -- for conciseness
  --
  --   keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
  --   keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Toggle file explorer on current file" }) -- toggle file explorer on current file
  --   keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" }) -- collapse file explorer
  --   keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" }) -- refresh file explorer
  -- end,
}
