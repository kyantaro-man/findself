Rails.application.routes.draw do
  resources :tops
  root 'tops#index'
end
