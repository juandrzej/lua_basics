local t1 = { a = 1, b = 2 }
local t2 = { c = 3 }

local mt = {
	__index = function(table, key)
		return "Key " .. key .. " not found"
	end,
	__add = function(t1, t2)
		local sum = {}
		for k, v in pairs(t1) do
			sum[k] = v
		end
		for k, v in pairs(t2) do
			sum[k] = v
		end
		return sum
	end,
}

setmetatable(t1, mt)
setmetatable(t2, mt)

print(t1.d) -- "Key d not found"
local t3 = t1 + t2
print(t3.a, t3.c) -- 1, 3
