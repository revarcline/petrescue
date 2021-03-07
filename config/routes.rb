Rails.application.routes.draw do
  resources :appointments
  devise_for :users
  resources :pets
  root 'static#index'
  get '/:species/', to: 'pets#index', as: 'species_index'
end
