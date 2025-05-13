-- Array-like table
local fruits = { "apple", "banana", "cherry" }
print(fruits[1]) -- Lua indexes start at 1!

-- Dictionary-like table
local person = {
	name = "Alice",
	age = 30,
	profession = "Engineer",
}
print(person.name) -- or person["name"]

-- Mixed table
local mixed = {
	"value1", -- index 1
	"value2", -- index 2
	name = "John", -- key "name"
	[5] = "five", -- index 5
}
