Rails.application.routes.draw do
  get 'students/create'
  get 'students/show'
  resources :students
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
