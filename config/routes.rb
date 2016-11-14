Rails.application.routes.draw do
  resources :userprojects

  resources :performs

  resources :contacts 

  resources :cities do 
    collection do
      get 'tehran'
      get 'esfahan'
      get 'ghom'
      get 'gilan'
      get 'golestan'
      get 'mazandaran'
      get 'kerman'
      get 'kermanshah'
      get 'azarbayjansharghi'
      get 'azarbayjangharbi'
      get 'ardebil'
      get 'eilam'
      get 'boushehr'
      get 'charmahalebakhtiari'
      get 'khorasanjounubi'
      get 'khorasanshomali'
      get 'khorasanrazavi'
      get 'khuzestan'
      get 'zanjan'
      get 'systanvabalouchestan'
      get 'semnan'
      get 'fars'
      get 'ghazvin'
      get 'kohgiluyevabayerahmad'
      get 'kordestan'
      get 'lorestan'
      get 'markazi'
      get 'hormozgan'
      get 'hamedan'
      get 'yazd'
      get 'alborz'
    end
  end


  devise_for :users
  # devise_for :users do
  #   match '/users/sign_out' => 'devise/sessions#destroy'
  # end

  resources :reports do
    collection do
      get 'reportbarayeproject'
    end
  end

  resources :profiles do
    collection do
      get 'mannagers'
      get 'ourprojects'
      get 'memari'
      get 'saze'
      get 'tasisat'
      get 'mohitezist'
      get 'tamasbama'
      get 'darbareyema'
      get 'taghdirname'
      get 'projehabarayesherkat'
      get 'newUser'
      post 'addUser'
      get 'editUser'
      put 'updateUser'
      patch 'updateUser'
    end
  end

  resources :profiles

  resources :projects
  resources :example_mailers



  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'profiles#homepage'
  # devise_for :users , :controller => {:registrations => "registrations"}

  
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
