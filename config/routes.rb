Rails.application.routes.draw do

  devise_for :users
  root 'posts#index'
  resources :posts do
    resources :details, except: [:index]
  end

  resources :details, only: [:index] do
    resources :comments
  end

end
