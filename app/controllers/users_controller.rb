class UsersController < ApplicationController
  
  def index
  	#binding.pry
   #redirect_to root_path
   @school = User.where("role = ?","school")
   @student = User.where(:role => "student")

  end
end
