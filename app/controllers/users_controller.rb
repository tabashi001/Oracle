class UsersController < ApplicationController
  
  def index
  	#binding.pry
   city = User.pluck(:city).uniq
   @city = city.reject { |item| item.nil? || item == '' }
   @role = User.pluck(:role).uniq
   @course = Course.pluck(:course_name).uniq
   @school = User.where("role = ?","school")
   @student = User.where(:role => "student")

   #@school = User.search.where("city LIKE ?","#{params[:search]}%")
   #binding.pry
   # @school = User.search(params[:city]) if params[:commit]=="Search"

  end
end
