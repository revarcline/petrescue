Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :pets do
    resources :appointments, except: %i[index]
  end
  resources :users, only: %i[show index] do
    resources :appointments, only: %i[index]
  end
  root 'static#index'
  get '/:species/', to: 'pets#index', as: 'species_index'
end
