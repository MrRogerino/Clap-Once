require 'faker'

User.create({
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	phone: Faker::PhoneNumber.cell_phone,
	rapid_id: rand(1000..2000)
})

User.create({
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	phone: Faker::PhoneNumber.cell_phone,
	rapid_id: rand(1000..2000)
})

User.create({
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	phone: Faker::PhoneNumber.cell_phone,
	rapid_id: rand(1000..2000)
})

5.times do
	Subscription.find_or_create_by({
		follower: User.all.sample,
		followee: User.all.sample
		})
end

Incident.create({
	name: "Fire",
	description: "Inferno consumes SF",
	severity: "severe"
})

Incident.create({
	name: "Terrorism Activity",
	description: "ISIS activity suspected in New York",
	severity: "moderate"
})

Incident.create({
	name: "Flood",
	description: "Levees fail in New Orleans",
	severity: "severe"
})
