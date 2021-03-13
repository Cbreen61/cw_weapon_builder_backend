# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
warzone = Game.create(name:"WarZone", publisher:"Activision",)
black_ops = Game.create(name:"Black-Ops Cold War", publisher:"Activision",)

Weapon.create(name:"Kilo 141",image:"https://static.wikia.nocookie.net/callofduty/images/6/6c/Kilo_141_model_MW.png/revision/latest/scale-to-width-down/1000?cb=20200205144946", weapon_type:"AR",laser:"Tac Laser", stock:"No Stock", underbarrel:"Commando Foregrip", rear_grip:"Stippled Grip Tape", perk:"Sleight of Hand",game_id: warzone.id)
Weapon.create(name:"MAC 10", image:"https://cdn.mos.cms.futurecdn.net/QR7PUqQ7XEvtTktd3MnqAJ-970-80.jpg.webp", weapon_type:"SMG",laser:"Tac Laser", stock:"No Stock", underbarrel:"Commando Foregrip", rear_grip:"Stippled Grip Tape", perk:"Sleight of Hand",game_id: black_ops.id)