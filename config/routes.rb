Rails.application.routes.draw do
  get '/top' => 'homes#top'
  
  get '/books/new' 
  get '/books' =>'books#index'
  get '/books/:id' => 'books#show', as: 'book'
  get '/books/:id/edit' => 'books#edit', as: 'edit_book'
  post 'books' => 'books#create' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
