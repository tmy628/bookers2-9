Rails.application.routes.draw do
  get 'chats/show'
  get 'search/search'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }

  root :to => "homes#top"
  get "home/about" => "homes#about"
  get '/search' => 'search#search'

  get 'chat/:id', to: 'chats#show', as: 'chat'
  resources :chats, only: [:create]

  resources :books, only: [:index, :show, :edit, :create, :destroy, :update] do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end

  resources :users, only: [:index, :show, :edit, :update] do
    resource :relationships, only: [:create, :destroy]
    get 'followings' => 'relationships#followings', as: 'followings'
    get 'followers' => 'relationships#followers', as: 'followers'
  end

end
