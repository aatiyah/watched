Rails.application.routes.draw do
  root 'episodes#index'
  devise_for :users
  get 'users/profile', to: 'users#show'

  resources :episodes do
  	member do
  		put 'watched'
  	end
  end
end
