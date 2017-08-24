# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create ({name: "farnsworth", fleet: "Planet Express Fleet", password: "futurama", email: "farnsworthrules@planetexpress.com"})
User.create ({name: "Malik", fleet: "Dutchkills Fleet", password: "123123", email: "mip12793@gmail.com"})
User.create ({name: "kerrigan", fleet: "Terran Ghost Fleet", password: "starcraft", email: "sarahkerrigan@terranconfederacy.com"})
User.create ({name: "solo", fleet: "Rebel Alliance Fleet", password: "starwars", email: "hansolo@nevertellmetheodds.com"})


Spaceship.create ({name: "Planet Express", capacity: 10, location: "Earth", user_id: 1})
Spaceship.create ({name: "The Test Ship", capacity: 125, location: "Earth", user_id: 2})
Spaceship.create ({name: "Battlecruiser", capacity: 200, location: "Earth", user_id: 3})
Spaceship.create ({name: "Millenium Falcon", capacity: 100, location: "Earth", user_id: 4})
Spaceship.create ({name: "Forward Unto Dawn", capacity: 400, location: "Earth", user_id: 1})
Spaceship.create ({name: "Pillar of Autumn", capacity: 400, location: "Earth", user_id: 2})
Spaceship.create ({name: "Truth and Reconciliation", capacity: 400, location: "Earth", user_id: 3})
Spaceship.create ({name: "Archangel", capacity: 300, location: "Earth", user_id: 4})
Spaceship.create ({name: "Ebon Hawk", capacity: 100, location: "Earth", user_id: 4})
Spaceship.create ({name: "Ravager", capacity: 400, location: "Earth", user_id: 3})
Spaceship.create ({name: "Slave-I", capacity: 10, location: "Earth", user_id: 4})
Spaceship.create ({name: "Yamato", capacity: 400, location: "Earth", user_id: 1})


Job.create ({description: "ship ten cases of dark matter to the desert planet of Tatooine", origin: "Earth", destination: "Tatooine", cost: "5000", containers_needed: 10})
Job.create ({description: "ship twenty cases of spice to the Terran Confederacy", origin: "Earth", destination: "Terran", cost: "2000", containers_needed: 20})
Job.create ({description: "ship five cases of alien poop to mars for fuel", origin: "Earth", destination: "Mars", cost: "1000", containers_needed: 5})
Job.create ({description: "200 cases of sarlacc spores to Uranus", origin: "Earth", destination: "Uranus", cost: "2500", containers_needed: "200"})
