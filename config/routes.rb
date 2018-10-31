Rails.application.routes.draw do
  resources :treasures
  resources :langs
  resources :factions
  resources :profiles
  resources :races
  resources :alignments
  resources :stats
  resources :purses
  resources :inventories
  resources :items
  resources :skills
  resources :saving_throws
  resources :dnd_classes
  resources :games
  resources :photos
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "games#index"

end
