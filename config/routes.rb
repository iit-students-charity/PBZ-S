Rails.application.routes.draw do
  root to: 'main_page#index'
  get '/first', to: 'main_page#calls_per_month'
  resources :calls
  resources :invoices
  resources :adresses
  resources :tariffs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
