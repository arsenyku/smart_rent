Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  :controller
  get '/helloworld', to: 'application#helloworld'
  get '/property_history', to: 'application#property_history'
  get '/contract', to: 'application#contract'
end
