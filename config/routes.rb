Rails.application.routes.draw do
  
  

  get 'new_years_items/index'

  get 'new_years_items/show'

  get 'new_years_items/new'

  get 'new_years_items/create'

  get 'new_years_items/edit'

  get 'new_years_items/update'

  get 'new_years_items/destroy'

  get 'new_years_items/_form'

  devise_for :users
  
  resources :users

  # get "search" => "products#search"

  root "products#index"

  get "aboutus" => "products#aboutus"

  get 'storepic' => "products#storepic"

  resources :layouts

  resources :products

  resources :admins

  resources :ws_products

  resources :popcorn_flavors

  resources :carted_products

  resources :orders

  resources :charges

  resources :holidays

  resources :christmas_items

  resources :thanksgiving_items

  resources :easter_items

  resources :valentines_items

  resources :sweetest_day_items

  resources :mothers_day_items

  resources :fathers_day_items

  resources :grand_parents_day_items

  resources :independence_day_items

  resources :st_patricks_day_items

  resources :new_years_items

  resources :halloween_items

  resources :professional_assistant_items

  resources :teacher_appreciation_items

  get "festivals" => "products#festivals"


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
