Rails.application.routes.draw do

  resources :flats
  resources :flats do
    resources :bookings, only: [:index, :new, :create]
  end
  devise_for :users
  resources :users do
    resources :bookings, only: [:index]
  end
  resources :bookings do
    resources :reviews, only: [:new, :create]
  end
  resources :bookings
  root to: 'flats#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
