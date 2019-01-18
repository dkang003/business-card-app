# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

characters = [
    {name:"Dolores Abernathy", email:"dolores@dolores.com", password:"dolores", password_confirmation:"dolores"},
    {name:"Bernard Lowe", email:"bernard@bernard.com", password:"bernard", password_confirmation:"bernard"},
    {name:"Maeve Millay", email:"maeve@maeve.com", password:"maeve", password_confirmation:"maeve"},
    {name:"The Man in Black", email:"tmib@tmib.com", password:"tmib", password_confirmation:"tmib"},
    {name:"Robert Ford", email:"rford@rford.com", password:"rford", password_confirmation:"rford"},
    {name:"Teddy Flood", email:"teddy@teddy.com", password:"teddy", password_confirmation:"teddy"},
    {name:"Theresa Cullen", email:"theresa@theresa.com", password:"theresa", password_confirmation:"theresa"},
    {name:"Charlotte Hale", email:"hale@hale.com", password:"hale", password_confirmation:"hale"},
    {name:"Elsie Hughes", email:"elsie@elsie.com", password:"elsie", password_confirmation:"elsie"},
    {name:"Clementine Pennyfeather", email:"clementine@clementine.com", password:"clementine", password_confirmation:"clementine"}
]
User.create(characters)

cards = [
    {name:"Dolores Abernathy", email:"dolores@dolores.com",phone:"(111)111-1111", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://amp.thisisinsider.com/images/5add3e93bd967123008b4569-750-563.jpg", user_id: 1},
    {name:"Bernard Lowe", email:"bernard@bernard.com",phone:"(222)222-2222", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://amp.thisisinsider.com/images/582b2cd6341d7ae3018b4931-750-563.png", user_id: 2},
    {name:"Maeve Millay", email:"maeve@maeve.com",phone:"(212)212-2112", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"http://previously.tv/wp-content/uploads/2016-10-23-westworld01.jpg", user_id: 3},
    {name:"The Man in Black", email:"tmib@tmib.com",phone:"(888)888-8888", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://cdn1.thr.com/sites/default/files/imagecache/scale_crop_768_433/2016/10/westworld_still_6.jpg", user_id: 4},
    {name:"Robert Ford", email:"rford@rford.com",phone:"(999)999-9999", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://i.ytimg.com/vi/MZYr_ZH50dw/maxresdefault.jpg", user_id: 5},
    {name:"Teddy Flood", email:"teddy@teddy.com",phone:"(123)456-7890", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://i.redd.it/kphlpk3nqgz01.png", user_id: 6},
    {name:"Theresa Cullen", email:"theresa@theresa.com",phone:"(123)456-7890", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://cdn.jwplayer.com/thumbs/EhJPSCXO-720.jpg", user_id: 7},
    {name:"Charlotte Hale", email:"hale@hale.com",phone:"(321)654-0987", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://4.bp.blogspot.com/-rAIOc-p-mks/WgtUHuqgdHI/AAAAAAAIr-I/cIp_L261uCc1ApaxnMjcqqgtH5q0XwGLgCLcBGAs/s1600/Tessa%2BThompson%2Bas%2BCharlotte%2BHale%2B001.jpg", user_id: 8},
    {name:"Elsie Hughes", email:"elsie@elsie.com",phone:"(777)777-7777", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://amp.thisisinsider.com/images/57fcd85f4520d485008b4732-750-422.png", user_id: 9},
    {name:"Clementine Pennyfeather", email:"clementine@clementine.com",phone:"(555)555-5555", logo:"https://vignette.wikia.nocookie.net/logopedia/images/9/9d/Old-school-westworld-logo-in-chestnut_copy.png/revision/latest?cb=20161215111252", image:"https://imagesvc.timeincapp.com/v3/fan/image?url=https://beyondwestworld.com/files/2018/04/Westworld-11.jpg&", user_id: 10}
]
Card.create(cards)