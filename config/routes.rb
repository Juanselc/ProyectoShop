Rails.application.routes.draw do
  get "home/index"
  get "movies/new"
  post "movies" => "movies#create"
  get "movies/:id" => "movies#show"
  get "movies" => "movies#index"
  get "movies/:id/edit" => "movies#edit"
  put "movies/:id" => "movies#update"
  delete "movies/:id" => "movies#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
