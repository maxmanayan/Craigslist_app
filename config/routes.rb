Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "languages#index"
  get "/languages", to: "languages#index"
  get "/languages/:id", to: "languages#show"


  
  get "languages/:language_id/questions/new", to: "questions#new"
  get "languages/:language_id/questions/:id/edit", to: "questions#edit"


  # actually change DB
  post "/languages/:language_id/questions", to: "questions#create"
  patch "/languages/:language_id/questions/:id", to: "questions#update"

  #custom route
  get "/allQuestions", to: "languages#allQuestions"
  get "/x", to: "languages#x"
end
