TweetApp::Application.routes.draw do
  
  devise_for :users
  resources :users, :only => [:show, :index, :create] do
    resources :tweets
  end
  match "admin" => "admin#index", :via => :get

  root :to=>'admin#index'
end
