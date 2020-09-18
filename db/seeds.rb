Adventurer.destroy_all
Potion.destroy_all
Recipe.destroy_all
Purchase.destroy_all

dedos = Adventurer.create(name: "Dedos", role: "Sorcerer")
august = Adventurer.create(name: "August", role: "Paladin")
hohann = Adventurer.create(name: "Hohann", role: "Artificer")
steve = Adventurer.create(name: "Creepy Steve", role: "Wizard")
dorn = Adventurer.create(name: "Dorn", role: "Monk")
nym = Adventurer.create(name: "Nym", role: "Sorcerer")
naboo = Adventurer.create(name: "Naboo", role: "Warlock")

healing = Potion.create(name: "Healing Potion", price: "50 gp", effects: "Restores a moderate amount of health")
swift = Potion.create(name: "Potion of Swiftness", price: "200 gp", effects: "Makes you go fast. Like really fast. Effects last for an hour")
giant_strength = Potion.create(name: "Potion of Giant Strength", price: "500 gp", effects: "Gives you the strength of a Storm Giant for an hour.")
dragon_breath = Potion.create(name: "Potion of Dragon Breath", price: "1000 gp", effects: "Allows user to exhale firy fury. Effects wear off after 3 uses.")
invisibility = Potion.create(name: "Potion of Invisibility", price: "750 gp", effects: "Grants the user invisibility for an hour. Caution: user will stil be heard.")
gas = Potion.create(name: "Potion of Gaseous Form", price: "100 gp", effects: "Allows the user to turn it a cloud of gas. Effects only last 10 minutes.")

healing_recipe = Recipe.create(name: "Healing Potion", ingredients: "Wyrmroot, Ephemeral Grass", cook_time: "60 minutes", potion_id: healing.id)
swift_recipe = Recipe.create(name: "Potion of Swiftness", ingredients: "Wyrmroot, Mercury Wing, Air Elemental breath", cook_time: "120 minutes", potion_id: swift.id)
giant_recipe = Recipe.create(name: "Potion of Giant Strength", ingredients: "Blood from a Giant, Ephemeral Grass, Wolfsbane", cook_time: "90 minutes", potion_id: giant_strength.id)
dragon_recipe = Recipe.create(name: "Potion of Dragon Breath", ingredients: "Scale of Dragon, Blood of Dragon, Nether Elixir", cook_time: "180 minutes", potion_id: dragon_breath.id)
invisibility_recipe = Recipe.create(name: "Potion of Invisibility", ingredients: "Ethereal Eyes, Ephemeral Grass, Phantasmal Approval", cook_time: "80 minutes", potion_id: invisibility.id)
gas_recipe = Recipe.create(name: "Potion of Gaseous Form", ingredients: "Sulfur, Liquid Smoke, Blood Cauliflower", cook_time: "60 minutes", potion_id: gas.id)

p1 = Purchase.create(potion_id: healing.id, adventurer_id: dedos.id)
p2 = Purchase.create(potion_id: swift.id, adventurer_id: dedos.id)
p3 = Purchase.create(potion_id: dragon_breath.id, adventurer_id: dorn.id)
p4 = Purchase.create(potion_id: invisibility.id, adventurer_id: naboo.id)
p5 = Purchase.create(potion_id: giant_strength.id, adventurer_id: august.id)
p6 = Purchase.create(potion_id: healing.id, adventurer_id: nym.id)
p7 = Purchase.create(potion_id: gas.id, adventurer_id: hohann.id)


