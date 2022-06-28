require "open-uri"

puts "cleaning database..."
Costume.destroy_all
User.destroy_all
puts "creating users"

user1 = User.new(email: "dave@gmail.com", password: "123456", first_name: "Dave", last_name: "Bacon")
user2 = User.new(email: "rob@gmail.com", password: "123456", first_name: "Rob", last_name: "Fernandes")

puts "creating costumes"
costume1 = Costume.new(
  location: "Hackney",
  address: "258C Richmond Rd, London",
  size: "Medium",
  price: 16,
  name: "Wonder Woman",
  user: user1
)
file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656425653/00060707p_1200x_1_yj5vb4.webp")
costume1.photo.attach(io: file, filename: "wonder-woman.png", content_type: "image/png")
costume1.save!

costume2 = Costume.new(
  location: "Dalston",
  address: "19 Buckingham Rd, London",
  size: "Large",
  price: 10,
  name: "Spiderman",
  user: user2
)
file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656425733/siperman_g2jfth.jpg")
costume2.photo.attach(io: file, filename: "spiderman.jpg", content_type: "image/jpg")
costume2.save!

costume3 = Costume.create!(
  location: "Bermondsey",
  address: "4 Neckinger, London",
  size: "Medium",
  price: 12,
  name: "Chilli",
  user: user1
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656425813/chilli-pepper-costume_brjee1.jpg")
costume3.photo.attach(io: file, filename: "chilli.jpg", content_type: "image/jpg")
costume3.save!


costume4 = Costume.create!(
  location: "Lambeth",
  address: "140 Lambeth Walk, London",
  size: "Large",
  price: 6,
  name: "He Man",
  user: user2
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656425878/b7b1b1a3-1824-46f8-b3e1-c29326ca870e_muy4dd.jpg")
costume4.photo.attach(io: file, filename: "he-man.jpg", content_type: "image/jpg")
costume4.save!

costume5 = Costume.create!(
  location: "Camberwell",
  address: "4a Grove Ln, London",
  size: "Large",
  price: 5,
  name: "Pimp",
  user: user1
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656426027/supa-mac-daddy-pimp-costume_dr8vlc.jpg")
costume5.photo.attach(io: file, filename: "pimp.jpg", content_type: "image/jpg")
costume5.save!

costume6 = Costume.create!(
  location: "Camden",
  address: "53 Arlington Rd, London",
  size: "Small",
  price: 7,
  name: "Frog",
  user: user2
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656426208/ef1649_c7cfff303e8b40348b1afc9263e6c2a4_txodcb.jpg")
costume6.photo.attach(io: file, filename: "frog.jpg", content_type: "image/png")
costume6.save!

costume7 = Costume.create!(
  location: "Notting Hill",
  address: "158 Lancaster Rd, London",
  size: "Large",
  price: 11,
  name: "Lobster",
  user: user1
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656428225/mens-crab-costume_oz6sh6.jpg")
costume7.photo.attach(io: file, filename: "lobster.jpg", content_type: "image/jpg")
costume7.save!

costume8 = Costume.create!(
  location: "Upper Clapton",
  address: "30 Gilda Cres, London",
  size: "Large",
  price: 4,
  name: "Peter Griffin",
  user: user2
)

file = URI.open("https://images-eu.ssl-images-amazon.com/images/I/31XpxoK4OoL._SR600%2C315_PIWhiteStrip%2CBottomLeft%2C0%2C35_SCLZZZZZZZ_FMpng_BG255%2C255%2C255.jpg")
costume8.photo.attach(io: file, filename: "peter-griffin.jpg", content_type: "image/jpg")
costume8.save!


costume9 = Costume.create!(
  location: "East Ham",
  address: "73A Wakefield St, London",
  size: "Medium",
  price: 6,
  name: "Snow White",
  user: user1
)

file = URI.open("https://res.cloudinary.com/dpk3pz6zs/image/upload/v1656428332/fever-fairytale-costume_2000x_copy_pyqiy2.jpg")
costume9.photo.attach(io: file, filename: "snow-white.jpg", content_type: "image/jpg")
costume9.save!

puts "seeded database!"
