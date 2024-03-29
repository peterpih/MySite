Rails.application.routes.draw do
  resources :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

    root 'pages#home'
	
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'
		
	get 'welcome' => 'pages#home'
	get '/pages' => 'pages#home'
	
	# from Codecademy Messages example
	get '/messages' => 'messages#index'
	get '/messages/new' => 'messages#new'
	post 'messages' => 'messages#create'
	
	get '/tags' => 'tags#index'
	get '/tags/:id' => 'tags#show', as: :tag
	get '/destinations/:id' => 'destinations#show', as: :destination
	get '/destinations/:id/edit' => 'destinations#edit', as: :edit_destination
	patch '/destinations/:id' => 'destinations#update'
	
	get '/movies' => 'movies#index'
	get '/movies/:id' => 'movies#show', as: :movie
	
	get '/actors' => 'actors#index'
	get '/actors/:id' => 'actors#show', as: :actor
	
# Authentication
	get '/signup'  => 'users#new'
	get '/users/:id' => 'users#show'
	get '/users/:id/edit' => 'users#edit'
	post "signup" => 'users#create'
	resources :users
	
	get '/login' => 'sessions#new'
	post 'login' => 'sessions#create'
  
	delete 'logout' => 'sessions#destroy'
  
  
  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
