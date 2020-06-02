Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'outbounds#index'
  get 'home' , to: 'home#index'
  # printpage
  get '/outbounds/:id/print/destination' , to: 'prints#show_destination' , as: 'prints_destination'
  get '/outbounds/:id/print/origin' , to: 'prints#show_origin' , as: 'prints_origin'

  resources :bags
  resources :feedbacks
  resources :outbounds do
  	resources :bags
  end
end