Rails.application.routes.draw do
  #get "about", to: 'info#about'
  #get "privacy", to: 'info#privacy'
  #get "faq", to: 'info#faq'
  #get "contact", to: 'info#contact'
  resources :pages
  

  #get 'pages/about', to: 'pages#about'
  #get 'welcome/index'
  devise_for :users

  scope '/admin' do
  resources :users
end
  resources :items
  resources :roles
  resources :products
  resources :categories
  resources :strengths
  resources :sites

  authenticated :user do
  root to: 'items#index', as: :authenticated_root
end
 
 root to: 'welcome#index'
 #get ':id' , to: 'pages#show', as: :page
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
