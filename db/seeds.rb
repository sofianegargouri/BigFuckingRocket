# frozen_string_literal: true

user = User.create!(email: 'admin@bfr.com', password: '12345678', password_confirmation: '12345678')
Rocket.create!(name: 'Big Fucking Rocket', user: user, image_url: 'https://media.giphy.com/media/HtaGVNHVnTNuw/giphy.gif')

Resource.create!(name: 'Iron', regen_time: 50)
Resource.create!(name: 'Gaz', regen_time: 80)
Resource.create!(name: 'Electricity', regen_time: 100)
Resource.create!(name: 'Steel', regen_time: 30)

Part.create!(name: 'Fins')
Part.create!(name: 'Tube')
Part.create!(name: 'Nose')
Part.create!(name: 'Hollow Pressure Vessel')

Stat.create!(name: 'Aerodynamism')
Stat.create!(name: 'Stability')
Stat.create!(name: 'Velocity')
