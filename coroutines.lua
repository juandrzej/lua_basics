local co = coroutine.create(function()
	for i = 1, 3 do
		print("Coroutine", i)
		coroutine.yield()
	end
end)

coroutine.resume(co) -- "Coroutine 1"
coroutine.resume(co) -- "Coroutine 2"
coroutine.resume(co) -- "Coroutine 3"
