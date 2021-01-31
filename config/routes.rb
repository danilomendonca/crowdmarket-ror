Rails.application.routes.draw do
  resources :supermarkets
  resources :product_prices
  resources :categories
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
