Rails.application.routes.draw do
  # get 'flats/index'
  # get 'flats/new'
  # get 'flats/create'
  resources :flats
  devise_for :users
  root to: 'flats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
