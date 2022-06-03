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
file = URI.open("https://cdn.shopify.com/s/files/1/0466/9292/5593/products/00060707p_1200x.png")
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
file = URI.open("https://m.media-amazon.com/images/I/51vThbKgVyL._AC_SX679_.jpg")
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

file = URI.open("https://www.elliottsfancydress.co.uk/media/catalog/product/cache/1/image/650x/040ec09b1e35df139433887a97daa66f/c/h/chilli-pepper-costume.jpg")
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

file = URI.open("https://s3-eu-west-1.amazonaws.com/images.linnlive.com/51d83020f3ba02e508f5f28a931540c2/b7b1b1a3-1824-46f8-b3e1-c29326ca870e.jpg")
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

file = URI.open("https://images.halloweencostumes.co.uk/products/1472/1-2/supa-mac-daddy-pimp-costume.jpg")
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

file = URI.open("https://cdn.shopify.com/s/files/1/0464/7062/7487/products/00013373p_600x.png")
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

file = URI.open("https://images.halloweencostumes.co.uk/products/43438/1-1/mens-crab-costume.jpg")
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

file = URI.open("https://cdn.shopify.com/s/files/1/0023/6178/6426/products/fever-fairytale-costume_2000x.jpg")
costume9.photo.attach(io: file, filename: "snow-white.jpg", content_type: "image/jpg")
costume9.save!

#   Costume.create!(
#     location: "London",
#     size: "Large",
#     price: 6,
#     name: "Turd",
#     user_id: 1
#   )

#   Costume.create!(
#     location: "London",
#     size: "Large",
#     price: 6,
#     name: "Hippy",
#     user_id: 1
#   )



puts "seeded database!"
