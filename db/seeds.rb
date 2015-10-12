10.times do
  Category.create!(name: Faker::Company.name, img: "http://image-link-archive.meteor.com/images/placeholder-640x480.png")
end
