Rails.application.routes.draw do
  resources :orders
  resources :products do
    resources :orders, only: [:show, :new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
