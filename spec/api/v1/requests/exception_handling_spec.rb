require 'rails_helper'

describe "Exception Handling", :type => :request do
 
  describe 'bad POST request for create method' do
    before { post '/api/v1/pets' }
    it 'should return a 400 Bad Request' do
      expect(response).to have_http_status(:bad_request)
    end
  end  


  describe 'bad GET request for show' do
    before { get '/api/v1/pets/12343' }
    it 'should return a 404 code for bad GET requst' do
      expect(response).to have_http_status(:not_found)    
    end
  end  
end