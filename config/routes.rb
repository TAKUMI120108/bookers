Rails.application.routes.draw do
  get '/top' => 'homes#top'
  
  get '/books' => 'books#top'
  get 'lists/new'
  get 'books' =>'books#index'
  get 'lists/show'
  get 'lists/edit'
  post 'books' => 'books#create' 

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
