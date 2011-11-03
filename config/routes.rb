Bridge::Application.routes.draw do
  resources :articles

  resources :organizations

  devise_for :users

  root :to => "home#index"
end

