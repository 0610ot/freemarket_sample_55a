Rails.application.routes.draw do

  devise_for :users
  root to: "items#index"

  resources :mypage, only: :index do
    collection do
      get "profile", to: "mypage#profile"
      get "card", to: "mypage#card"
      get "information", to: "mypage#information"
      get "logout", to: "mypage#logout"
    end
  end

  resources :items, only: [:new,:show] do
    collection do
      get "sell", to: "items#sell"
      get "sell/edit/:id", to: "items#edit_item"
      get "transaction/buy/:id", to: "items#buy_confirm"
    end
  end
  resources :signup do
    collection do
      get 'signup'
      get 'menber'
      get 'tel'
      get 'address'
      get 'done'
      end
    end
  end