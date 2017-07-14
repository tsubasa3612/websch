Rails.application.routes.draw do
  # get 'comments/create'
  post '/comments' => 'comments#create'
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
