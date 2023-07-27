Rails.application.routes.draw do

  get 'relationships/followings'
  get 'relationships/followers'
  devise_for :users
  root to: "homes#top"
  get 'home/about' => 'homes#about', as: 'about'
  resources :books, only: [:new,:create, :index, :show, :edit, :update, :destroy] do
    resources :book_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  resources :users, only: [:new, :index, :show, :edit, :update] do
    member do
      get :follows, :followers
    end
      resource :relationships, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end