puts "Removing old data..."
Audition.delete_all
Role.delete_all


puts "Creating roles..."
Role.create(character_name: "James Bond")
Role.create(character_name: "Marilyn Monroe")
Role.create(character_name: "Baby Shark")

puts "Creating auditions..."
Audition.create(actor: "Fred", location: "NYC", phone: 1234567890, hired: true, role_id: 1)
Audition.create(actor: "James", location: "LA", phone: 2345678901, hired: false, role_id: 2)
Audition.create(actor: "Kayla", location: "Miami", phone: 3456789012, hired: true, role_id: 3)
Audition.create(actor: "Chris", location: "San Diego", phone: 4567890123, hired: false, role_id: 1)
Audition.create(actor: "Layla", location: "Cheyenne", phone: 6789012345, hired: false, role_id: 3)


puts "Database seeded!"