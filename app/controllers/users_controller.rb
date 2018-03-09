class UsersController < ApplicationController
  
  def index
   @school 	= User.where(:role => "school")
   @teacher = User.where(:role => "teacher")
   @student = User.where(:role => "student")
   @vendor 	= User.where(:role => "vendor")
  end

  def search
  	@school = User.where(:role => "school")
  end

end
