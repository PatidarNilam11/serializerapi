Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'users'
  # devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
 
  # root "home#index"
  root "posts#index"
  resources :posts do
    member do
    put 'like_post'
  end

  
  collection do
    get :search
  end
end
end
