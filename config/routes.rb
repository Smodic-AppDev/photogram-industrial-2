Rails.application.routes.draw do
  
  root "photos#index"

  
  

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos


  get "/:username" => "users#show" #must be at end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
