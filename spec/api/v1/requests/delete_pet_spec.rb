require 'rails_helper'

describe 'DELETE request route' do
  it 'will return a 200 status' do
    cat = Pet.create!({:name => "Jojo", :bio => "Please adopt me!", :species => "cat", :age => 3, :breed => "Tabby"})

    delete "/api/v1/pets/#{cat.id}", params: {:bio => "I've been adopted!"}
    expect(response).to have_http_status(:success)
  end  
end


