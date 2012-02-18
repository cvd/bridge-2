Bridge::Application.routes.draw do

  get "u" => "user#home", :as => :user_home

  resources :articles

  resources :organizations do
    collection do
      get "map"
      get "search"
    end

    member do
      get "follow"
    end

    resources :researchers
    resources :volunteers
    resources :services
  end

  devise_for :users

  root :to => "home#index"
end

