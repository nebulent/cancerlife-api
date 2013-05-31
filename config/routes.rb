Cancerlife::Application.routes.draw do

  resources :users
  
  root :to => "pages#index", :via => :post, :format => :json
end
