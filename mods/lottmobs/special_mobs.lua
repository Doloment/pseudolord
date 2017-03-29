mobs:register_mob("lottmobs:elf_trader", {
	type = "npc",
        race = "GAMEelf",
        hp_min = 20,
	hp_max = 50,
	collisionbox = {-0.3,-1.1,-0.3, 0.3,0.91,0.3},
	textures = {
		{"lottmobs_elf_trader.png", "lottarmor_trans.png", "lottarmor_trans.png", "lottarmor_trans.png"},
	},
	visual = "mesh",
	visual_size = {x=0.95, y=1.15},
	mesh = "lottarmor_character.b3d",
	view_range = 20,
	makes_footstep_sound = true,
	walk_velocity = 1.5,
	run_velocity = 5,
	damage = 6,
	armor = 200,
	drops = { },
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 10,
	light_damage = 0,
	attack_type = "dogfight",
	follow = "lottother:narya",
	animation = {
		speed_normal = 15,
		speed_run = 20,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "mobs_slash_attack",
	},
	drops = {
		{name = "lord_money:silver_coin 9",
		chance = 3,
		min = 1,
		max = 6,},
		{name = "lord_money:gold_coin 3",
		chance = 7,
		min = 1,
		max = 5,},
		{name = "lord_money:cooper_coin 30",
		chance = 10,
		min = 1,
		max = 3,},
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
	on_rightclick = function(self, clicker)
		lottmobs_trader(self, clicker, entity, lottmobs.elf, "gui_elfbg.png", "GAMEelf")
	end,
})
--mobs:register_spawn("lottmobs:elf_trader", {"lottmapgen:lorien_grass"}, 20, 0, 60000, 3, 31000)

mobs:register_mob("lottmobs:human_trader", {
	type = "npc",
        race = "GAMEman",
        hp_min = 15,
	hp_max = 35,
	collisionbox = {-0.3,-1.0,-0.3, 0.3,0.8,0.3},
	textures = {
		{"lottmobs_human_trader.png", "lottarmor_trans.png", "lottarmor_trans.png", "lottarmor_trans.png"},
	},
	visual = "mesh",
	mesh = "lottarmor_character.b3d",
	makes_footstep_sound = true,
	view_range = 12,
	walk_velocity = 1,
	run_velocity = 3,
	armor = 100,
	damage = 5,
	drops = { },
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 10,
	light_damage = 0,
	attack_type = "dogfight",
	follow = "lottother:narya",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	drops = {
		{name = "lord_money:silver_coin 9",
		chance = 3,
		min = 1,
		max = 6,},
		{name = "lord_money:gold_coin 3",
		chance = 7,
		min = 1,
		max = 5,},
		{name = "lord_money:cooper_coin 30",
		chance = 10,
		min = 1,
		max = 3,},
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
	on_rightclick = function(self, clicker)
		lottmobs_trader(self, clicker, entity, lottmobs.human, "gui_gondorbg.png", "GAMEman")
	end,
})
--mobs:register_spawn("lottmobs:human_trader", {"lottmapgen:rohan_grass"}, 20, -1, 60000, 3, 31000)
--mobs:register_spawn("lottmobs:human_trader", {"lottmapgen:gondor_grass"}, 20, -1, 60000, 3, 31000)

mobs:register_mob("lottmobs:hobbit_trader", {
	type = "npc",
        race = "GAMEman",
        hp_min = 5,
	hp_max = 15,
	collisionbox = {-0.3,-0.75,-0.3, 0.3,0.7,0.3},
	textures = {
		{"lottmobs_hobbit_trader.png", "lottarmor_trans.png", "lottarmor_trans.png", "lottarmor_trans.png"},
	},
	visual = "mesh",
	visual_size = {x=1.1, y=0.75},
	mesh = "lottarmor_character.b3d",
	makes_footstep_sound = true,
	walk_velocity = 1,
	armor = 300,
	drops = { },
	light_resistant = true,
	drawtype = "front",
	water_damage = 1,
	lava_damage = 5,
	light_damage = 0,
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	drops = {
		{name = "lord_money:silver_coin 9",
		chance = 3,
		min = 1,
		max = 6,},
		{name = "lord_money:gold_coin 3",
		chance = 7,
		min = 1,
		max = 5,},
		{name = "lord_money:cooper_coin 30",
		chance = 10,
		min = 1,
		max = 3,},
	},
	jump = true,
	step=1,
	passive = true,
	sounds = {
	},
	on_rightclick = function(self, clicker)
		lottmobs_trader(self, clicker, entity, lottmobs.hobbit, "gui_hobbitbg.png", "GAMEhobbit")
	end,
})
--mobs:register_spawn("lottmobs:hobbit_trader", {"lottmapgen:shire_grass"}, 20, -1, 60000, 3, 31000)

mobs:register_mob("lottmobs:dwarf_trader", {
	type = "npc",
        race = "GAMEdwarf",
        hp_min = 20,
	hp_max = 30,
	collisionbox = {-0.3,-.85,-0.3, 0.3,0.68,0.3},
	textures = {
		{"lottmobs_dwarf_trader.png", "lottarmor_trans.png", "lottarmor_trans.png", "lottarmor_trans.png"},
	},
	visual = "mesh",
	visual_size = {x=1.1, y=0.85},
	mesh = "lottarmor_character.b3d",
	view_range = 10,
	makes_footstep_sound = true,
	walk_velocity = 1,
	run_velocity = 2,
	armor = 200,
	damage = 4,
	drops = {},
	light_resistant = true,
	drawtype = "front",
	water_damage = 0,
	lava_damage = 10,
	light_damage = 0,
	attack_type = "dogfight",
	follow = "lottother:narya",
	animation = {
		speed_normal = 15,
		speed_run = 15,
		stand_start = 0,
		stand_end = 79,
		walk_start = 168,
		walk_end = 187,
		run_start = 168,
		run_end = 187,
		punch_start = 189,
		punch_end = 198,
	},
	jump = true,
	sounds = {
		war_cry = "mobs_die_yell",
		death = "default_death",
		attack = "default_punch2",
	},
	drops = {
		{name = "lord_money:silver_coin 9",
		chance = 3,
		min = 1,
		max = 6,},
		{name = "lord_money:gold_coin 3",
		chance = 7,
		min = 1,
		max = 5,},
		{name = "lord_money:cooper_coin 30",
		chance = 10,
		min = 1,
		max = 3,},
	},
	attacks_monsters = true,
	peaceful = true,
	group_attack = true,
	step = 1,
	on_rightclick = function(self, clicker)
		lottmobs_trader(self, clicker, entity, lottmobs.dwarf, "gui_angmarbg.png", "GAMEdwarf")
	end,
})
--mobs:register_spawn("lottmobs:dwarf_trader", {"lottmapgen:ironhill_grass"}, 20, -1, 60000, 3, 31000)
