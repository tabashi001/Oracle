Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resource :showcase do 
		collection do 
			get :school_showcase
		end
	end
	resources :students

	resources :teachers 

	resources :schools

	resources :vendors

	root to: "users#index"
	devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks",
	 sessions: 'users/sessions' ,registrations: 'users/registrations',passwords: 'users/passwords'}
	devise_scope :user do 
		get '/users/login' => 'devise/sessions#new'
	    get '/users/register' => 'devise/registrations#new'
	    get '/users/sign_out' => 'devise/sessions#destroy'
	end
end
