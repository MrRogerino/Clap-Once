require 'faker'

location_arr = ["SF", "Boston", "Texas", "Washington"]

User.create({
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	phone: Faker::PhoneNumber.cell_phone,
	location: location_arr.sample,
	rapid_id: rand(1000..2000)
})

User.create({
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	phone: Faker::PhoneNumber.cell_phone,
	location: location_arr.sample,
	rapid_id: rand(1000..2000)
})

User.create({
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	phone: Faker::PhoneNumber.cell_phone,
	location: location_arr.sample,
	rapid_id: rand(1000..2000)
})


Subscription.create({
	follower_id: 1,
	followee_id: 2
})

Subscription.create({
	follower_id: 2,
	followee_id: 3
})


Incident.create({
	name: "Fire",
	description: Faker::ChuckNorris.fact,
	location: location_arr.sample,
	severity: rand(3..5)
})

Incident.create({
	name: "Terrorism Activity",
	description: Faker::ChuckNorris.fact,
	location: location_arr.sample,
	severity: rand(3..5)
})

Incident.create({
	name: "Flood",
	description: Faker::ChuckNorris.fact,
	location: location_arr.sample,
	severity: rand(3..5)
})

2.times do 
	UserIncident.create({
		user_id: rand(1..10),
		incident_id: rand(1..3)
	})
end
