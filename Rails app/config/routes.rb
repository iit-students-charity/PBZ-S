Rails.application.routes.draw do
  root to: 'main_page#index'
  get '/first', to: 'main_page#calls_per_month'
  get '/second', to: 'main_page#bad_users'
  get '/third', to: 'main_page#tariff_on_date'
  post '/pay', to: 'pay#pay'
  resources :calls
  resources :invoices
  resources :adresses
  resources :tariffs
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
