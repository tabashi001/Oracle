class UsersController < ApplicationController
  
  def index
  	#binding.pry
   city = User.pluck(:city).uniq
   @city = city.reject { |item| item.nil? || item == '' }
   @role = User.pluck(:role).uniq
   @course = Course.pluck(:course_name).uniq
   @school 	= User.where(:role => "school")
   #@teacher = User.where(:role => "teacher")

   @student = User.where(:role => "student")
   #@vendor 	= User.where(:role => "vendor")
   #binding.pry
   if params[:commit]=="Search"
   		@@first_value = params[:user]
			redirect_to users_search_path
			end   	 

  end

   #@school = User.search.where("city LIKE ?","#{params[:search]}%")
   #binding.pry
   # @school = User.search(params[:city]) if params[:commit]=="Search"

  def search
  	#binding.pry
  	@course = Course.all
  	#@school = User.where(:role => "school").paginate(:per_page => 5, :page => params[:page])
  	@school = User.search(@@first_value).paginate(:per_page => 7, :page => params[:page])


  	city = User.pluck(:city).uniq
    @city = city.reject { |item| item.nil? || item == '' }
  	#binding.pry
  end

  def show
    #binding.pry
    @college 	= User.find(id = params[:id])
    @all_college = User.where(:role => "school")
    @course_detail = @college.courses #All Course Details
    @scholership = @college.scholarships
  end
 
end
