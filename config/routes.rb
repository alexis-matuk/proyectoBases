Rails.application.routes.draw do

  #get '/proveedors/:id/ingrediente', to: 'proveedors#ingrediente', as: 'ingredientes_proveedor'
  get '/proveedors/:id/ingrediente', to: 'ingredientes#new', as: 'proveedors_new_ingrediente'

  get '/proveedors/agregar', to: 'proveedors#agregar', as: 'agregar_proveedor'

  get '/establecimiento_proveedors/llenar', to: 'establecimiento_proveedors#llenar', as: 'llenar_establecimiento_proveedor'

  get '/platillos/agregar', to: 'platillos#agregar', as: 'agregar_platillo'

  get '/establecimiento_platillos/llenar', to: 'establecimiento_platillos#llenar', as: 'llenar_establecimiento_platillo'

  get '/inspectors/agregar', to: 'inspectors#agregar', as: 'agregar_inspector'

  get '/establecimiento_inspectors/llenar', to: 'establecimiento_inspectors#llenar', as: 'llenar_establecimiento_inspector'

   get '/ingredientes/agregar', to: 'ingredientes#agregar', as: 'agregar_ingrediente'

  get '/ingrediente_platillos/llenar', to: 'ingrediente_platillos#llenar', as: 'llenar_ingrediente_platillo'

  # devise_for :users
 devise_for :users, :controllers => { registrations: 'registrations' }

  resources :ingrediente_platillos

  resources :establecimiento_platillos

  resources :establecimiento_inspectors

  resources :establecimiento_proveedors

  resources :inspectors

  resources :reportes

  resources :empleados

  resources :proveedors

  resources :ingredientes

  resources :platillos

  resources :establecimientos do
    resources :platillos
  end

  root 'establecimientos#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  #root 'welcome#index'

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
