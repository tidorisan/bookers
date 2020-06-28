Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'books#top'
  resources :books
  # delete "books/:id" => "books#destory" as: "destory_books"
end