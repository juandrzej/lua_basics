local x = 10

if x > 20 then
	print("x is large")
elseif x > 10 then
	print("x is medium")
else
	print("x is small")
end

-- While loop
local i = 1
while i <= 5 do
	print(i)
	i = i + 1
end

-- For loop (numeric)
for i = 1, 5 do
	print(i)
end

-- For loop with step
for i = 10, 1, -2 do -- count down from 10 to 1 by -2
	print(i)
end

-- Repeat loop (like do-while)
local j = 1
repeat
	print(j)
	j = j + 1
until j > 5
