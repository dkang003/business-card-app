# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

characters = [
    {name:"Dolores Abernathy", email:"dolores@dolores.com", password:"dolores", password_confirmation:"dolores"},
    {name:"Bernard Lowe", email:"bernard@bernard.com", password:"bernard", password_confirmation:"bernard"}
]
User.create(characters)

cards = [
    {name:"Dolores Abernathy", email:"dolores@dolores.com",phone:"(111)111-1111", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://amp.thisisinsider.com/images/5add3e93bd967123008b4569-750-563.jpg", user_id: 1},
    {name:"Bernard Lowe", email:"bernard@bernard.com",phone:"(222)222-2222", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://amp.thisisinsider.com/images/582b2cd6341d7ae3018b4931-750-563.png", user_id: 2}
]
Card.create(cards)