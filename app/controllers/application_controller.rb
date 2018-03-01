class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	if resource.role == "student"
  		students_path
  	elsif resource.role == "school"
  		schools_path
  	elsif resource.role == "teacher"
  		teachers_path
  	elsif resource.role == "vendor"
  		vendors_path
  	elsif resource.role == "admin"
  		admin_index_path
    else resource.role == " "
      students_path
  	end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_no, :gender, :address, :city, :pincode, :country, :gender, :role,
              :profile_image, :document, :qualification])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_no, :gender, :address, :city, :pincode, :country, :gender, :role,
       :profile_image, :document, :qualification, :cover_image, :description])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
  end
end