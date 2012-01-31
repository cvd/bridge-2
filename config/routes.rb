Bridge::Application.routes.draw do
  resources :services

  resources :volunteers

  resources :reseearchers

  resources :articles

  resources :organizations do
    collection do
      get "map"
    end

    resources :researchers
    resources :volunteers
    resources :services
  end

  devise_for :users

  root :to => "home#index"
end

