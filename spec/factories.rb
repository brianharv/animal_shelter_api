FactoryBot.define do
  factory(:pet) do
    name {Faker::Creature::Cat.name}
    species {"cat"}
    bio {Faker::TvShows::MichaelScott.quote}
    breed {Faker::Creature::Cat.breed}
    age {rand(1..15)}
  end
end