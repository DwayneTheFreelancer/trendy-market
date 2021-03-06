Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "products#index"

  get '/products', to: 'products#index'
  get '/products/new', to: 'products#new', as: 'new_product'
  get '/products/:id', to: 'products#show', as: 'product' 
  post '/products', to: 'products#create'
  get '/product/:id/edit', to: 'products#edit', as: 'edit_product'
  patch '/products/:id', to: 'products#update'
  
end
