Rails.application.routes.draw do
  resources :appointments, only: %i[show edit create edit update delete]
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :pets do
    resources :appointments, only: :new
  end
  resources :users, only: %i[show index]
  root 'static#index'
  get '/:species/', to: 'pets#index', as: 'species_index'
end
