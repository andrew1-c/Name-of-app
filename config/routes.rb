Rails.application.routes.draw do
  resources :products
  resources :object_books
  get 'static_pages/about', to: "static_pages#about", as: "about"

  get 'static_pages/contact', to: "static_pages#contact", as: "contact"

  get 'static_pages/index', as: "home"
  root 'static_pages#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
