class Seed

  def self.begin
    seed = Seed.new
    seed.generate_pets
  end
  
  def generate_pets

    25.times do |i|
      pet = Pet.create!(
        name: Faker::Creature::Dog.name,
        species: "dog",
        breed: Faker::Creature::Dog.breed,
        age: rand(1..15),
        bio: Faker::TvShows::MichaelScott.quote
      )
    puts "Generated a #{pet.species} named: #{pet.name}."  
    end

    25.times do |j|
      pet = Pet.create!(
        name: Faker::Creature::Cat.name,
        species: "cat",
        breed: Faker::Creature::Cat.breed,
        age: rand(1..20),
        bio: Faker::TvShows::MichaelScott.quote
      )
    puts "Generated a #{pet.species} named: #{pet.name}."   
    end
  end
end

Seed.begin