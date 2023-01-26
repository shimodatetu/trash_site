Rails.application.routes.draw do
  resources :trashes
  resources :wards
  get 'wards/:id/:wardplace_id', to: "wards#wardplace_show"
  get 'wards/:id', to: "wards#show"
  get "/trashes/:id/:wardplace_id", to: "trashes#show"
  get "/trashes/:id/:wardplace_id/:search_word", to: "trashes#show"
  post "/trashes/search", to: "trashes#search"
  post "/trashes/create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
