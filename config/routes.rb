Rails.application.routes.draw do
  # Routes for the Activity resource:

  root 'activities#index'

  # CREATE
  get "/activities/new", :controller => "activities", :action => "new"
  post "/create_activity", :controller => "activities", :action => "create"

  # READ
  get "/activities", :controller => "activities", :action => "index"
  get "/activities/:id", :controller => "activities", :action => "show"

  # UPDATE
  get "/activities/:id/edit", :controller => "activities", :action => "edit"
  post "/update_activity/:id", :controller => "activities", :action => "update"

  # DELETE
  get "/delete_activity/:id", :controller => "activities", :action => "destroy"
  #------------------------------

  # Routes for the Mood resource:
  # CREATE
  get "/moods/new", :controller => "moods", :action => "new"
  post "/create_mood", :controller => "moods", :action => "create"

  # READ
  get "/moods", :controller => "moods", :action => "index"
  get "/moods/:id", :controller => "moods", :action => "show"

  # UPDATE
  get "/moods/:id/edit", :controller => "moods", :action => "edit"
  post "/update_mood/:id", :controller => "moods", :action => "update"

  # DELETE
  get "/delete_mood/:id", :controller => "moods", :action => "destroy"
  #------------------------------

  # Routes for the Registration resource:
  # CREATE
  get "/registrations/new/:id", :controller => "registrations", :action => "new"
  post "/create_registration", :controller => "registrations", :action => "create"

  # READ
  get "/registrations", :controller => "registrations", :action => "index"
  get "/registrations/:id", :controller => "registrations", :action => "show"

  # UPDATE
  get "/registrations/:id/edit", :controller => "registrations", :action => "edit"
  post "/update_registration/:id", :controller => "registrations", :action => "update"

  # DELETE
  get "/delete_registration/:id", :controller => "registrations", :action => "destroy"
  #------------------------------

  devise_for :users
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
