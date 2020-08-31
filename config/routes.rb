Rails.application.routes.draw do
  get 'tops/index'
  resources :tops
  root 'tops#index'
end
