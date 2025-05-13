-- Basic function
function greet(name)
	return "Hello, " .. name .. "!"
end

print(greet("World")) -- "Hello, World!"

-- Variable number of arguments
function sum(...)
	local total = 0
	for i, num in ipairs({ ... }) do
		total = total + num
	end
	return total
end

print(sum(1, 2, 3, 4)) -- 10

-- First-class functions
local square = function(x)
	return x * x
end
print(square(5)) -- 25
