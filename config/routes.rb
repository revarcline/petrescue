Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
  resources :pets do
    resources :appointments, except: %i[index]
  end
  resources :users, only: %i[show index destroy]
  resources :appointments, only: %i[index]
  root 'static#index'
  get '/:species/', to: 'pets#index', as: 'species_index'
  patch '/users/:id/admin', to: 'users#admin_toggle', as: 'user_admin_toggle'
end
