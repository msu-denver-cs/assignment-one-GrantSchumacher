Rails.application.routes.draw do

  #Added root index 
  root 'pages#home'	
  
  get 'pages/home'
  resources :car_forms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
