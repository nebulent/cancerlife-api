Cancerlife::Application.routes.draw do

  resources :users

  namespace :api do
    resources :users, :only => :index do
      collection do
        post 'create', :format => :json, :path => 'create'
     end
    end
  end
  
  root :to => "pages#index"
end
