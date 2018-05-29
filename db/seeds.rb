# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(email: 'email@email.com', password: '123456', role: "apprentice")
apprentice1 = Apprentice.new(first_name: 'John', last_name: 'Doe')
apprentice1.user = user1
apprentice1.save

user2 = User.create(email: 'email2@email.com', password: '123456', role: "apprentice")
apprentice2 = Apprentice.new(first_name: 'Johna', last_name: 'Doea')
apprentice2.user = user2
apprentice2.save

user3 = User.create(email: 'email3@email.com', password: '123456', role: "apprentice")
apprentice3 = Apprentice.new(first_name: 'Johnb', last_name: 'Doeb')
apprentice3.user = user3
apprentice3.save

user4 = User.create(email: 'email4@email.com', password: '123456', role: "apprentice")
apprentice4 = Apprentice.new(first_name: 'Johnc', last_name: 'Doec')
apprentice4.user = user4
apprentice4.save

user5 = User.create(email: 'email5@email.com', password: '123456', role: "apprentice")
apprentice5 = Apprentice.new(first_name: 'Johnd', last_name: 'Doed')
apprentice5.user = user1
apprentice5.save

user6 = User.create(email: 'email@email.com', password: '123456', role: "host_validator")


user7 = User.create(email: 'email2@email.com', password: '123456', role: "host_validator")


user8 = User.create(email: 'email3@email.com', password: '123456', role: "host_validator")


user9 = User.create(email: 'email4@email.com', password: '123456', role: "host_validator")


user10 = User.create(email: 'email5@email.com', password: '123456', role: "host_validator")


user11 = User.create(email: 'email@email.com', password: '123456', role: "host_invoice_contact")


user12 = User.create(email: 'email2@email.com', password: '123456', role: "host_invoice_contact")


user13 = User.create(email: 'email3@email.com', password: '123456', role: "host_invoice_contact")


user14 = User.create(email: 'email4@email.com', password: '123456', role: "host_invoice_contact")


user15 = User.create(email: 'email5@email.com', password: '123456', role: "host_invoice_contactr")
