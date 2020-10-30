Rails.application.routes.draw do
  devise_for :users
    # concern :api_base do
      resources :pets
end    
#   end  

#   namespace :v1 do
#     concerns :api_base
#   end  
# end
