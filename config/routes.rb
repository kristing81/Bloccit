Bloccit::Application.routes.draw do

  devise_for :users
    resources :users, only: [:update]

<<<<<<< HEAD
   resources :topics do
     resources :posts, except: [:index] do
      resources :comments, only: [:create, :destroy]

        post '/up-vote' => 'votes#up-vote', as: :up_vote
        post '/down-vote' => 'votes#down-vote', as: :down_vote
    end
=======
  resources :topics do
    resources :posts, except: [:index]
>>>>>>> shallow-nesting
   end

  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end