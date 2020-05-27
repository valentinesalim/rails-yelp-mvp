Rails.application.routes.draw do
  resources :restaurants do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
      resources :reviews, only: [:new, :create]
    end
  resources :reviews, only: [:destroy]
end
