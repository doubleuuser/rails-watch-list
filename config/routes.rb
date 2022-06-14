Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'lists#index'

  get "lists", to: 'lists#index'
  get 'lists/new', to: 'lists#new'

  get 'lists/:id', to: 'lists#show'

  post 'lists', to: 'lists#create'

  get 'bookmarks', to: 'bookmarks#index'
  get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new'
  post 'lists/bookmarks', to: 'bookmarks#create'



end
