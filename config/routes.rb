Rails.application.routes.draw do
  # Root route set to home action
  root 'pages#home'
  
  # If there's a GET request for home, send it to pages controller with home action.
  get '/home', to: 'pages#home'
  
  # # If there's a GET request for recipes, send it to recipes controller with index action.
  # # This page lists all recipes.
  # # Recipes Controller => index action
  # get '/recipes', to: 'recipes#index'
  
  # # If there's a GET request for recipes/new, send it to recipes controller with new action.
  # # This page contains a form that allows users/chefs to create new recipes.
  # # Recipes Controller => new action
  # get '/recipes/new', to: 'recipes#new', as: 'new_recipe'
  
  # # This is a POST request that handles the submission of the form.
  # # This will be handled by the create action in the recipes controller.
  # # Recipes Controller => create action
  # post '/recipes', to: 'recipes#create'
  
  # # If there's a GET request for recipes/edit, send it to recipes controller with edit action.
  # # This page contains a form that allows users/chefs to edit their associated recipes.
  # # Recipes Controller => edit action
  # get '/recipes/:id/edit', to: 'recipes#edit', as: 'edit_recipe'
  
  # # When you submit the edit, it will be a patch request to update the recipe entry.
  # # Recipes Controller => update action
  # patch '/recipes/:id', to: 'recipes#update'
  
  # # Get request to show an individual recipe (a recipe's own page)
  # # Recipes Controller => show action
  # get '/recipes/:id', to: 'recipes#show', as: 'recipe'
  
  # # Delete request to be able to delete a selected recipe entry (assuming 
  # # the individual doing the deletion is the author of that recipe).
  # # Recipes Controller => destroy action
  # delete '/recipes/:id', to: 'recipes#destroy'
  
  
  # Do the above commented code, but in one line.
  resources :recipes
  
  
  
  
  
  ################# AUTO GENERATED CODE BELOW   #################
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
