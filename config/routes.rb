Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#home'

  get 'about', to: 'home#about'

  resources :articles

  get 'signup', to: 'users#new'

  get 'login', to: 'sessions#new'

  post 'login', to: 'sessions#create'

  delete 'logout', to: 'sessions#destroy'

  
  resources :users, except: [:new]
  resources :categories, except: [:destroy]
  
end
