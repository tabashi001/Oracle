Rails.application.routes.draw do
  get 'showcase/school_showcase'

  get 'showcase/student_showcase'

  get 'showcase/teacher_showcase'

  get 'showcase/vender_showcase'

  devise_for :users, controllers: { sessions: 'users/sessions' }
  

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
devise_scope :user do 
root to: "users/sessions#new"
get  'sign_out' ,to: 'devise/sessions#destroy'

end
resource :showcase do 
	collection do 
		get :school_showcase
	end
end

end
