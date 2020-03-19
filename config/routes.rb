Rails.application.routes.draw do
  get 'tweets/index'
  devise_for :users
  # get 'home/user_profile'
  get 'user_profile/:id', to: 'home#user_profile', as: 'profile'
  get 'home/you_can_follow'
  get 'follow/:id', to: 'home#follow', as: 'follow'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
