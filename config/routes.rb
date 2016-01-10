Rails.application.routes.draw do
  resources :contacts
  resources :members	
  
  get 'pages/home'
  get 'pages/about', :path => '/about'
  get 'pages/programs', :path => '/programs'
  root 'pages#home'


end
