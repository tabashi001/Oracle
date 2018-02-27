class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	if resource.role == "student"
  		students_index_path
  	elsif resource.role == "school"
  		school_index_path
  	elsif resource.role == "teacher"
  		teacher_index_path
  	elsif resource.role == "vendor"
  		vendor_index_path
  	elsif resource.role == "admin"
  		admin_index_path
    else resource.role == " "
      students_index_path
  	end
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :phone_no, :gender, :address, :city, :pincode, :country, :gender, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :phone_no, :gender, :address, :city, :pincode, :country, :gender, :role])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
  end
end
