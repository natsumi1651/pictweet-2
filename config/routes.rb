Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
<<<<<<< Updated upstream
  resources :tweets
=======
  resources :tweets do
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
>>>>>>> Stashed changes
  resources :users, only: :show
end