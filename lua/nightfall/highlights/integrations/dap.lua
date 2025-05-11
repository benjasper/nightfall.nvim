local M = {}
local U = require("nightfall.util")

-- Put this into your nvim-dap setup configuration
-- sign("DapBreakpoint", { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" })
-- sign("DapBreakpointCondition", { text = "", texthl = "DapBreakpointCondition", linehl = "", numhl = "" })
-- sign("DapBreakpointRejected", { text = "", texthl = "DapBreakpoint", linehl = "", numhl = "" })
-- sign("DapLogPoint", { text = "◆", texthl = "DapLogPoint", linehl = "", numhl = "" })
-- sign("DapStopped", { texthl = "DapStopped" })

---@type nightfall.HighlightsFn
function M.get(c)
	return {
		DapBreakpoint = { fg = c.red },
		DapBreakpointCondition = { fg = c.red },
		DapBreakpointRejected = { fg = c.red },
		DapLogPoint = { fg = c.yellow },
		DapStopped = { fg = c.green },
	}
end

return M

