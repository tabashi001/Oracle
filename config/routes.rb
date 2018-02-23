Rails.application.routes.draw do
	
  get 'showcase/school_showcase'

  get 'showcase/student_showcase'

  get 'showcase/teacher_showcase'

  get 'showcase/vender_showcase'

  get 'students/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	resource :showcase do 
		collection do 
			get :school_showcase
		end
	end
	
	devise_for :users, controllers: { sessions: 'users/sessions' }
	devise_scope :user do 
		root to: "users/sessions#new"
		get '/users/login' => 'devise/sessions#new'
	    get '/users/register' => 'devise/registrations#new'
	    get '/users/sign_out' => 'devise/sessions#destroy'
	end
end
