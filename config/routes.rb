Rails.application.routes.draw do
  
  root "photos#index"

  
  

  devise_for :users

  resources :comments
  resources :follow_requests
  resources :likes
  resources :photos

  get ":username/liked" => "photos#liked", as: :liked_photos
  get ":username/feed" => "users#feed", as: :user_feed
  get ":username/followers" => "users#followers", as: :user_followers
  get ":username/following" => "users#following", as: :user_following

  get ":username" => "users#show", as: :user  #must be at end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
