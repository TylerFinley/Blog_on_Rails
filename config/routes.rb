Rails.application.routes.draw do

  resources :posts do
    resources :details, except: [:index]
  end

  resources :details, only: [:index] do
    resources :comments
  end

end
