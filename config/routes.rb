Rails.application.routes.draw do
  resources :abilities
  resources :players
  root :to => 'players#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
