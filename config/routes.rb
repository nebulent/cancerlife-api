Cancerlife::Application.routes.draw do

  resources :users

  constraints(Subdomain) do
    namespace :api do
      resources :users, :only => :index do
        collection do
          post 'create', :format => :json, :path => 'create'
       end
      end
    end
  end
  root :to => "pages#index"
end
