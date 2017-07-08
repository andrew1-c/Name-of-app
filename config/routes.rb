Rails.application.routes.draw do
  resources :products
  resources :object_books
  get 'static_pages/about', to: "static_pages#about", as: "about"

  get 'static_pages/contact', to: "static_pages#contact", as: "contact"

  get 'static_pages/index', as: "home"
  get 'products', to: "products#index", as:"productsp"
  get 'orders/index', to: "orders#index", as: "ordersp"


  root 'static_pages#landing_page'
  resources :orders, only: [:index, :show, :create, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
