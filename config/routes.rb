Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'basics', to: 'users/registrations#new_basic'
    post 'basics', to: 'users/registrations#create_basic'
    get 'profiles', to: 'users/registrations#new_profile'
    post 'profiles', to: 'users/registrations#create_profile'
  end

  resources :users do
    resource :profiles, only: [:edit, :update, :show]
  end

  root to: 'tops#index'
end
