Rails.application.routes.draw do
  resources :reviews, only: [:index, :create]
  resources :campgrounds
  resources :locations, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
