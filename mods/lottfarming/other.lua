local SL = lord.require_intllib()

minetest.register_craftitem("lottfarming:cookie_cracker", {
	description = SL("Cracker"),
	inventory_image = "lottfarming_cookie_cracker.png",
	on_use = minetest.item_eat(2),
})

minetest.register_craft({
	type = "cooking",
	cooktime = 7,
	output = "lottfarming:cookie_cracker 16",
	recipe = "lottfarming:salted_dough"
})

minetest.register_craft({
	type = "shapeless",
	output = "lottfarming:salted_dough",
	recipe = {"lottores:salt", "lottfarming:dough"},
})

minetest.register_craft({
	type = "shapeless",
	output = "lottfarming:dough 4",
	recipe = {"lottpotion:glass_bottle_water", "farming:flour"},
	replacements = {{"lottpotion:glass_bottle_water", "vessels:glass_bottle"}},
})

minetest.register_craft({
	type = "shapeless",
	output = "lottfarming:yeast_dough",
	recipe = {"group:mushroom", "lottfarming:dough"},
})

minetest.register_craftitem("lottfarming:dough", {
	description = SL("Dough"),
	inventory_image = "lottfarming_dough.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("lottfarming:yeast_dough", {
	description = SL("Yeast Dough"),
	inventory_image = "lottfarming_ydough.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("lottfarming:salted_dough", {
	description = SL("Salted Dough"),
	inventory_image = "lottfarming_sdough.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "shapeless",
	output = "lottfarming:dough_with_egg",
	recipe = {"lottmobs:egg", "lottfarming:dough"},
})

minetest.register_craftitem("lottfarming:dough_with_egg", {
	description = SL("Dough with Egg"),
	inventory_image = "lottfarming_eggdough.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("lottfarming:biscuit", {
	description = SL("Biscuit"),
	inventory_image = "lottfarming_biscuit.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "lottfarming:biscuit 2",
	recipe = "lottfarming:dough_with_egg"
})

minetest.register_craft({
	type = "shapeless",
	output = "lottfarming:sugar 4",
	recipe = {"default:papyrus"}
})

minetest.register_craftitem("lottfarming:sugar", {
	description = SL("Sugar"),
	inventory_image = "lottfarming_sugar.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craftitem("lottfarming:candy", {
	description = SL("Caramel Candy"),
	inventory_image = "lottfarming_candy.png",
	on_use = minetest.item_eat(1),
})

minetest.register_craft({
	type = "cooking",
	output = "lottfarming:candy 2",
	recipe = "lottfarming:sugar"
})

--[[
minetest.register_craftitem("lottfarming:dough_for_sbread", {
	description = SL("Dough for Shortbread"),
	inventory_image = "lottfarming_sbreaddough.png",
	on_use = minetest.item_eat(1),
})


minetest.register_craft({
	type = "shapeless",
	output = "lottfarming:dough_for_sbread",
	recipe = {"lottmobs:butter", "lottfarming:sugar", "lottfarming:dough"},
})
]]--
