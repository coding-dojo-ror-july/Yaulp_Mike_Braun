Rails.application.routes.draw do
  root 'users#index' #using users controller, and index method
  post '/users' => 'users#create' #using users controller and create method to pass user data (REGISTER)
  post '/users/authenticate' => 'users#authenticate' #LOGIN
  get 'signin' => 'users#signin' #using users controller and new method to go to user creation page
  post '/restaurants' => 'restaurants#create' #using the restaurants contoller and create method pass rest data
  #get '/restaurants/:id' => 'restaurants#show' #using the restaurants controller and show method, show a rest
  get '/restaurants/new' => 'restaurants#new' #using the restaurants controller and new method, go to creation page
  get '/restaurants/all' => 'restaurants#all' #using the restaurants controller and all method, see all restaurants

end
