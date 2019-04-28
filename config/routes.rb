Rails.application.routes.draw do
  get '/welcome', to:'pages#welcome'
  get '/privacy', to:'pages#privacy'
  root 'pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
