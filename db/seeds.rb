puts "Apagando restaurantes"
Restaurant.destroy_all
7.times do |i|
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
end
puts "Criamos alguns restaurantes novosss"
