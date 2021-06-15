Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  
  resources :tweets do 
    post 'retweet', to: "tweets#retweet"
    member do
      put "like", to: "tweets#upvote"
      put "dislike", to: "tweets#downvote"
    end
  end

  root 'tweets#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
