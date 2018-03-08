Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resource :showcase do 
		collection do 
			get :school_showcase
		end
	end

	resources :students do 
		get :pay_fees_school
		post :pay_fees_school
		get :pay_fees_tutor
		post :pay_fees_tutor
		get :sale_book
		post :sale_book 
	end


	resources :teachers 

	resources :schools do
		get :overview
		post :overview
		get :course
		post :course
		get :scholarship
		post :scholarship
		get :placement
		post :placement
		get :cutoff
		post :cutoff
		get :campu
		post :campu
		get  :schoolinformation
		post :schoolinformation
		get  :schoolpicture
		post :schoolpicture
		get  :schoolvideo
		post :schoolvideo
	end

	resources :vendors

	root to: "users#index"
	devise_for :users, controllers: { :omniauth_callbacks => "users/omniauth_callbacks",
	 sessions: 'users/sessions' ,registrations: 'users/registrations',passwords: 'users/passwords'}
	devise_scope :user do 
		get '/users/login' => 'devise/sessions#new'
	    get '/users/register' => 'devise/registrations#new'
	    get '/users/sign_out' => 'devise/sessions#destroy'
	end

	get 'users/search'
end
