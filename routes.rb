Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htmlRails.application.routes.draw do
  #devise_for :users:
  
  get 'password_resets/new'

  get 'password_resets/edit'

  root   'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/injuries',  to: 'injuries#index'
  get '/injuries/generate', to: 'injuries#generate'
  #get 'injuries/generate/:id' => 'injuries#generate'
  #get '/injuries',   to: 'injuries#new'

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :injuries
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
 # resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
end

