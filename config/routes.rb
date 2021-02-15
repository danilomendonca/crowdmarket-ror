Rails.application.routes.draw do
  resources :brands
  resources :supermarkets
  resources :product_prices

  resources :categories do
    get 'add_product', action: :add_product
  end

  resources :products  do
    get 'add_price', action: :add_price
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
