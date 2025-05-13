-- Simple adventure game
local player = {
	name = "",
	health = 100,
	inventory = { "sword" },
}

function player:takeDamage(amount)
	self.health = self.health - amount
	if self.health <= 0 then
		print(self.name .. " has died!")
	else
		print(self.name .. " has " .. self.health .. " health left.")
	end
end

print("Welcome to the adventure!")
io.write("Enter your name: ")
player.name = io.read()

local enemies = {
	{ name = "Goblin", health = 30, damage = 10 },
	{ name = "Orc", health = 50, damage = 15 },
}

math.randomseed(os.time())

while player.health > 0 do
	print("\nWhat will you do?")
	print("1. Fight an enemy")
	print("2. Check inventory")
	print("3. Quit")

	io.write("Choice: ")
	local choice = tonumber(io.read())

	if choice == 1 then
		local enemy = enemies[math.random(#enemies)]
		print("A wild " .. enemy.name .. " appears!")

		while enemy.health > 0 and player.health > 0 do
			print(
				"\n"
					.. player.name
					.. " (HP: "
					.. player.health
					.. ") vs "
					.. enemy.name
					.. " (HP: "
					.. enemy.health
					.. ")"
			)
			print("1. Attack")
			print("2. Run")

			io.write("Choice: ")
			local fightChoice = tonumber(io.read())

			if fightChoice == 1 then
				local damage = math.random(5, 15)
				enemy.health = enemy.health - damage
				print("You hit the " .. enemy.name .. " for " .. damage .. " damage!")

				if enemy.health <= 0 then
					print("You defeated the " .. enemy.name .. "!")
					table.insert(player.inventory, enemy.name .. " trophy")
				else
					player:takeDamage(enemy.damage)
				end
			elseif fightChoice == 2 then
				print("You ran away!")
				break
			end
		end
	elseif choice == 2 then
		print("\nInventory:")
		for i, item in ipairs(player.inventory) do
			print(i .. ". " .. item)
		end
	elseif choice == 3 then
		print("Thanks for playing!")
		break
	end
end
