Rails.application.routes.draw do
  root 'welcome#index'
  resources :channels, only: [:new, :index, :create]
  resources :shows, only: [:new, :index, :create, :show, :edit, :update]
  resources :show_listings, only: [:new, :index, :create, :show]
end
