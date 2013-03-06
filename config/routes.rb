FlashCards::Application.routes.draw do

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :cards do
    get :start
  end
  
  # because of resources you don't need this anymore 
    #get "users/new"
      root :to => 'static_pages#home'

  match '/signup', to: 'users#new'

  match '/signin', to: 'sessions#new'

  match '/signout', to: 'sessions#destroy', via: :delete
  
  match '/rubykeys', to: "cards#start"

  match '/wrong', to: "cards#wrong"

  match '/wrong', to:  "start#wrong"

  match '/home', to: "static_pages#home"

  match '/rubyfuncts', to: "cards#ruby_functs"

  match '/rubyops', to: "cards#rubyops"

  match '/rubyinfo', to: "static_pages#rubyinfo"

  match '/gitinfo', to: "static_pages#gitinfo"

  match '/gitcommands', to: "cards#gitcommands"

  match '/rakecommands', to: "cards#rakecommands"

  match '/railsinfo', to: "static_pages#railsinfo"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
 

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
