Rails.application.routes.draw do

  resources :announcements
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	
	resource :showcase do 
		collection do 
			get :school_showcase
		end
	end

	resources :students do 
		get :pay_fees_school
		post :pay_fees_school
		get :fee_details
		get :pay_fees_tutor
		post :pay_fees_tutor
		get :sale_book
		post :sale_book 
		get :schools
		get :apply_school
		post :apply_school
		get :teachers
		get :apply_teacher
		post :apply_teacher
		get :slots
		get :books
		get :buy_book
		post :buy_book
		get :attend_exam
		get :exams_list
		get :start_exam
		get :result
	end

	resources :teachers do
		get :schools
		get :students
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
		get :slots
		get :create_slots
		post :create_slots
		get :update_slots
		patch :update_slots
		get :destroy_slot
		get :demo_videos
		get :create_demo_videos
		post :create_demo_videos
		get :update_demo_videos
		patch :update_demo_videos
		get :destroy_demo_video
		get :teacher_openings
		get :evaluate_answer
		get :answersheets_list
		get :start_evaluate

	end

	resources :schools do
		get :teachers
		get :vendors
		get :students
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
		get :requirements
		get :post_requirements
		post :teacher_requirement
		get :update_teacher_requirement
		patch :update_teacher_requirement
		get :destroy_teacher_requirement
		post :vendor_requirement
		get :update_vendor_requirement
		patch :update_vendor_requirement
		get :destroy_vendor_requirement
	end

	resources :vendors do
		get :schools
		get :vendor_openings
		get :apply_school
		post :apply_school
	end

	root to: "users#index"
	devise_for :users, controllers: { 
			:omniauth_callbacks => "users/omniauth_callbacks",
	 		sessions: 'users/sessions' ,
	 		registrations: 'users/registrations',
	 		passwords: 'users/passwords'}
	
	devise_scope :user do 
		get '/users/login' => 'devise/sessions#new'
		get '/users/register' => 'devise/registrations#new'
		get '/users/sign_out' => 'devise/sessions#destroy'
		#get '/users/:id/showcase' => 'users#showcase'
	end

	devise_for :admins, controllers: { sessions: 'admins/sessions'}
	devise_scope :admin do 
			get '/admins/login' => 'devise/sessions#new'
		    get '/admins/sign_out' => 'devise/sessions#destroy'
		    #get '/users/:id/showcase' => 'users#showcase'
		end
	resources :admins do 
		get :schools
		get :school_update
		patch :school_update
		get :teachers
		get :students
		get :vendors
		post :activate
		get :video_upload
		post :video_upload
		get :compose_test
		get :select_question
	end
	  get 'users/search' 
	  get 'users/filter'
	  get 'users/student_show'
	  get 'users/show'
	  get 'users/all_school'
	  get 'users/all_student'
	  get 'users/all_teacher'
	  get 'users/all_vendor'
	  post 'users/find_all_course_name'
	  get 'users/current_requirements'
	  get 'users/apply_to_post'
	  get 'users/services' 
	  get 'users/mail'
	  get 'users/terms_conditions' 
	  get 'users/fas' 

	  resources :users do
			resources :reviews
		end


end
