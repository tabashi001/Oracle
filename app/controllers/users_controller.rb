class UsersController < ApplicationController
  
  def index
   @school = User.where("role = ?","school")
   @student = User.where(:role => "student")
  end

  def search
  	@school = User.where("role = ?","school")
  end

end
