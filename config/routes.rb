Rails.application.routes.draw do
  resources :projects
  get 'call/hello'
  resources :blogs
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  # get"posts/index" , to:"posts#index"

  #Simple Route

  # resources :posts do
  #  get :title
  # end


  # member function route


  # resources :posts do

  #   resources :students, only: %i[index new create]
  # end

  resources :posts


  #Collection function route
  #   collection do
  #     get :search
  #   end
  # end

  #another method of member function when you only required one member function

  # get :title, on: :member
  # end

  # root "articles#index"
  #take out us fron home page the post page having home page url

  # root'posts#index'
  resources :calls
  resources :associates
  resources :students
  root 'students#index'
end
