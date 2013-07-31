WestlakePro::Application.routes.draw do
  get "products/index"

  mount Rich::Engine => '/rich', :as => 'rich'

  root :to => 'pages#home'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
        
  
  get '/about' => 'pages#about'
  get '/what_we_do' => 'pages#what_we_do'
  get '/contact' => 'email_contacts#new'
  get '/careers' => 'pages#careers'
  get '/home' => 'pages#home'
  
  get '/site_map' => 'pages#sitemap'
  get '/privacy_policy' => 'pages#privacy'
  get '/pricing_policy' => 'pages#pricing'
  get '/avid' => 'pages#avid'
  get '/avid_tabs' => 'pages#avid_tabs'
  resources :email_contacts, only: :create
  
  match 'careers/:career_id/contact' => 'career_contacts#new', via: :get, as: :new_career_contact
  match 'careers/:career_id/contact' => 'career_contacts#create', via: :post
  match 'careers/contact' => 'career_contacts#resume', via: :get, as: :career_resume
  match "careers/contact" => 'career_contacts#create_resume', via: :post 
  match 'events/:event_id/rsvp' => 'event_contacts#new', via: :get, as: :new_rsvp
  match 'events/:event_id/rsvp' => 'event_contacts#create', via: :post 
  match 'gallery/:gallery_type' => 'gallery#show', via: :get, as: :gallery
  
  get '/line_card' => 'products#index'
  resources :products, only: :index 

  get '/events' => 'events#index'
  resources :events, only: :index do 
    collection do 
      get :past
      get :weekly
    end

    #match 'events/pastevents' => 'events#past', via: :get, as: :past_events
    #match 'events/weekly' => 'events#weekly', via: :get, as: :weekly_events
  end
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
