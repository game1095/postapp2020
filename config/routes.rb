Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/game', as: 'rails_admin'
  root to: 'outbounds#index'
  get 'home' , to: 'home#index'

  #Print Document
    # ปริ้นสามแถว
    get '/outbounds/:id/print/destination' , to: 'prints#show_destination' , as: 'prints_destination'
    get '/outbounds/:id/print/origin' , to: 'prints#show_origin' , as: 'prints_origin'
    # ปริ้นแถวเดียว
    get 'outbounds/:id/print/paper_destination' , to: 'prints#paper_show_destination' , as: 'paper_destination'
    get 'outbounds/:id/print/paper_origin' , to: 'prints#paper_show_origin' , as: 'paper_origin'

  get 'bags/' , to: 'bags#index'
  resources :bags
  resources :feedbacks
  resources :outbounds do
  	resources :bags
  end
end
