Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  devise_scope :user do
    get 'basics', to: 'users/registrations#new_basic'
    post 'basics', to: 'users/registrations#create_basic'
  end
  root to: 'tops#index'
end
