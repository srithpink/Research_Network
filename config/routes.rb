Rails.application.routes.draw do
 
  resources :pmembers

 

 resources :posts do 
  member do
    put "like", to: "posts#upvote"
    put "dislike", to: "posts#downvote"
  end
end
resources :posts do
  resources :comments
end
resources :home do
  member do
    get :following, :followers
  end
end
resources :relationships, only: [:create, :destroy]
resources :home
  resources :relationships
	  get 'home/index'
      get 'home/show'
     
      get 'posts/show'
  root to: "home#index"
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
   
    end
    
 

