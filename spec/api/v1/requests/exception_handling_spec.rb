require 'rails_helper'

describe "Bad PUT request error", :type => :request do
 
  before { get '/api/v1/pets/12343' }

  it 'should return a 404 code' do
  expect(response).to have_http_status(:not_found)    
  end
end