Rails.application.routes.draw do
  # devise_for :users
  # end    
  namespace :api do
    namespace :v1 do
      resources :pets  
    end   
  end

  resoureces :pets
  root to: 'pets#index'
end  