-- Single line comment

--[[
    Multi-line
    comment
]]

-- Variables are global by default
name = "Lua Learner"
age = 25

-- Local variables (preferred)
local localName = "Better Practice"

print(type("Hello")) -- string
print(type(10.3)) -- number (no integer/float distinction)
print(type(print)) -- function
print(type(true)) -- boolean
print(type(nil)) -- nil
print(type({})) -- table
