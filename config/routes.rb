Rails.application.routes.draw do
  
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
    post 'follow/:id', to: 'friends#follow' , as:'follow_user'
    delete 'unfollow/:friend_id', to: 'friends#unfollow', as:'unfollow_user'
    
  end 

  resources :tweets do 
    post 'retweet', to: "tweets#retweet"
    member do
      put "like", to: "tweets#upvote"
      put "dislike", to: "tweets#downvote"
    end
  end


  


  get 'users/show', to: 'users#show'
  root 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
