Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'outbounds#index'
  get 'home' , to: 'home#index'
  resources :feedbacks
  resources :outbounds do
  	resources :bags
  	resources :prints
  	# get '/static_print' , to: 'outbounds#static_print'
    
  end
end