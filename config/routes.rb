Rails.application.routes.draw do


  # We can use users#new for now, or replace this with the controller and action you want to be the site root:
	root to: 'users#new'
  	
  # sign up page with form:
   get 'users/new' => 'users#new', as: 'new_user'

  # create (post) action for when sign up form is submitted:
  post 'users' => 'users#create'

	# log in page with form:
	get '/login'     => 'sessions#new', as: 'login'
	
	# create (post) action for when log in form is submitted:
	post '/login'    => 'sessions#create'
	
	# delete action to log out:
	delete '/logout' => 'sessions#destroy', as: 'logout'
  
  get 'home' => 'home#index', as: 'home'

  get 'edit' => 'home#edit', as: 'edit'

  post 'edit' => 'home#index'

   resources :profiles , only: [:update]
   resources :educations , only: [:new]
   resources :projects , only: [:new]
end
