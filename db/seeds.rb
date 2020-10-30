class Seed

  def self.begin
    seed = Seed.new
    seed.generate_pets
  end
  
  def generate_pets

    25.times do |i|
      pet = Pet.create!(
        name: Faker::Creature::Dog.name,
        type: 'Dog',
        breed: Faker::Creature::Dog.breed,
        age: rand(1..15)
      )
    puts "Generated a #{pet.type} named: #{pet.name}."  
    end

    25.times do |j|
      pet = Pet.create!(
        name: Faker::Creature::Cat.name,
        type: 'Cat',
        breed: Faker::Creature::Cat.breed,
        age: rand(1..20)
      )
    puts "Generated a #{pet.type} named: #{pet.name}."   
    end
  end
end

Seed.begin