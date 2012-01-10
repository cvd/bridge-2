Bridge::Application.routes.draw do
  resources :articles

  resources :organizations do
    collection do
      get "map"
    end

    member do
      get "research"
      get "volunteer"
      get "services"
    end
  end

  devise_for :users

  root :to => "home#index"
end

