require 'rails_helper'

describe "POST to pet route", :type => :request do

  before do
    post '/api/v1/pets', params: { :breed => 'test_breed', :age => 5, :bio => 'Please adopt this kitty', :name => 'Jojo', :species => 'cat'}
  end

  it 'returns the pet name' do
    expect(JSON.parse(response.body)['name']).to eq('Jojo')
  end

  it 'returns the breed' do
    expect(JSON.parse(response.body)['breed']).to eq('test_breed')
  end

  it 'returns the pet age' do
    expect(JSON.parse(response.body)['age']).to eq(5)
  end
  it 'returns the pet bio' do
    expect(JSON.parse(response.body)['bio']).to eq('Please adopt this kitty')
  end

  it 'returns the pet species' do
    expect(JSON.parse(response.body)['species']).to eq('cat')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end