Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  get "about", to: "pages#about"
  # resources :articles  # gives access to all the routes for articles
  # resources :articles , only: [:show, :index, :new, :create, :edit, :update, :destroy]
  resources :articles # exposes all the routes above as well
end
