Rails.application.routes.draw do
 resources :posts do 
  member do
    put "like", to: "posts#upvote"
    put "dislike", to: "posts#downvote"
  end
end


  resources :posts
	  get 'home/index'
      get 'home/show'
      get 'home/susers'
      get 'posts/show'
  root to: "home#index"
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }
   
    end
    
 

