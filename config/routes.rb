Rails.application.routes.draw do


  resources :cars_parts
  #Added root index 
  root 'pages#home'	
  
  get 'pages/home'
  resources :car_forms

end
