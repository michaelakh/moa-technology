Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  resources :projects
  get '/welcome', to:'pages#welcome'
  get '/privacy', to:'pages#privacy'
  get '/cv', to:'pages#cv'
  root 'pages#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
