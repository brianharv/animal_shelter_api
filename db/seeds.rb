class Seed
  def self.begin
    seed = Seed.new
    seed.generate_pets
  end
  
  def generate_pets
    25.times do |i|
      pet = Pet.create!(
        name: Faker::Dog.name
        type: 'Dog'
        breed: Faker::Dog.breed
        age: Faker::Dog.age
      )
    puts "Generated a #{pet.type} named: #{pet.name}."  
    end
    25.times do |j|
      pet = Pet.create!(
        name: Faker::Cat.name
        type: 'Cat'
        breed: Faker::Cat.breed
        age: Faker::Cat.age
      )
    puts "Generated a #{pet.type} named: #{pet.name}."   
    end
  end
end

Seed.begin