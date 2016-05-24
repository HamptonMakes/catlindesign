Catlindesign::Application.routes.draw do

  root :to => "main#index"
  
  resources :areas do
    resources :pages
  end
  
  resources :people
  resources :albums do
    resources :pictures
  end
  
  get "admin" => "admin#index"
  
  # For logging in etc.
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  
  namespace :admin do |admin|
    resources :people
    resources :users
    resources :albums do
      resources :pictures
    end
    resources :areas do
      resources :pages
    end
  end

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
