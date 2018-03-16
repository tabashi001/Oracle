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


	resources :teachers do
		get :schools
		get :apply_school
		post :apply_school
		get :find_student
		get :sale_notes
		get :create_sale_notes
		post :create_sale_notes
		get :update_sale_notes
		patch :update_sale_notes
		get :sale
		get :destroy_sale_notes
	end

	resources :schools do
		get :teachers
		get :overview
		post :overview
		get :update_overview
		patch :update_overview
		get :courses
		get :course
		post :course
		get :update_course
		patch :update_course
		get :destroy_course
		get :scholarships
		get :scholarship
		post :scholarship
		get :update_scholarship
		patch :update_scholarship
		get :destroy_scholarship
		get :placements
		get :placement
		post :placement
		get :update_placement
		patch :update_placement
		get :destroy_placement
		get :cutoffs
		get :cutoff
		post :cutoff
		get :update_cutoff
		patch :update_cutoff
		get :destroy_cutoff
		get :campus
		get :campu
		post :campu
		get :update_campu
		patch :update_campu
		get :destroy_campu
		get	:schoolinformations
		get  :schoolinformation
		post :schoolinformation
		get :update_schoolinformation
		patch :update_schoolinformation
		get :destroy_schoolinformation
		get :schoolpictures
		get  :schoolpicture
		post :schoolpicture
		get :update_schoolpicture
		patch :update_schoolpicture
		get :destroy_schoolpicture
		get :schoolvideos
		get  :schoolvideo
		post :schoolvideo
		get :update_schoolvideo
		patch :update_schoolvideo
		get :destroy_schoolvideo
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
