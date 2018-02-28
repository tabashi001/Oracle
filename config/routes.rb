Rails.application.routes.draw do

  get 'dashboard/schhol'

  get 'dashboard/teacher'

  get 'dashboard/student'

  get 'dashboard/vendor'

  get 'showcase/school_showcase'

  get 'showcase/student_showcase'

  get 'showcase/teacher_showcase'

  get 'showcase/vender_showcase'

  get 'students/index'

  # get 'student/profile/:id',to: "student#profile",

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resource :showcase do 
		collection do 
			get :school_showcase
		end
	end

	resource :student do
		member do
			get :profile
		end
	end
	
	devise_for :users
	root to: "users#index"
	devise_scope :user do 
         
         

		#root to: "devise/sessions#new"
		get '/users/login' => 'devise/sessions#new'
	    get '/users/register' => 'devise/registrations#new'
	    get '/users/sign_out' => 'devise/sessions#destroy'

	end
end
