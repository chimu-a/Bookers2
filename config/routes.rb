Rails.application.routes.draw do

  devise_for :users
  resources :books, only: [:new, :index, :show, :edit]
  resources :users, only: [:new, :index, :show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
end
