Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html





  root 'cars#index'
  get '/cars' => 'cars#index', as: 'cars'
  get '/cars/new' => 'cars#new', as: 'new_car'
  post '/cars' => 'cars#create'
  get '/cars/:id' => 'cars#show' , as: 'car'
  get '/cars/:id/bookings/new'=> 'bookings#new' ,as:'new_booking'
  get '/cars/:id/edit' => 'cars#edit', as: 'edit_car'
  patch '/cars/:id' => 'cars#update'
  delete '/cars/:id' => 'cars#destroy'


  get '/customers' => 'customers#index', as: 'customers'
  get '/customers/new' => 'customers#new', as: 'new_customer'
  post '/customers' => 'customers#create'
  get '/customers/:id' => 'customers#show' , as: 'customer'
  get '/customers/:id/edit' => 'customers#edit', as: 'edit_customer'
  patch '/customers/:id' => 'customers#update'
  delete '/customers/:id' => 'customers#destroy'



  get '/bookings' => 'bookings#index', as: 'bookings'
   post '/cars/:id/bookings' => 'bookings#create'
  get '/bookings/:id' => 'bookings#show' , as: 'booking'
  get '/bookings/:id/edit' => 'bookings#edit', as: 'edit_booking'
  patch '/bookings/:id' => 'bookings#update'
  delete '/bookings/:id' => 'bookings#destroy'

  get '/aboutus' => 'companyprofiles#index' , as: 'aboutus'

  get '/contactus' => 'ourcontacts#index' ,  as: 'contactus'

get '/customers/:customer_id/bookings' => 'bookings#index', as: 'bookings_customers'

end