TweetApp::Application.routes.draw do
  
  devise_for :users
  resources :users, :only => [:show, :index, :create] do
    resources :tweets
  end
  match "home" => "home#index", :via => :get

  root :to=>'home#index'
end
