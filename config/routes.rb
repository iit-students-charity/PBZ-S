Rails.application.routes.draw do
  resources :calls
  resources :invoices
  resources :adresses
  resources :tariffs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
