class UsersController < ApplicationController
  
  def index
  	#binding.pry
   city = User.pluck(:city).uniq
   @city = city.reject { |item| item.nil? || item == '' }
   @role = User.pluck(:role).uniq
   @course = Course.pluck(:course_name).uniq
   @school 	= User.where(:role => "school")
   @student = User.where(:role => "student")
   if params[:commit]=="Search"
   		@@first_value = params[:user]
			redirect_to users_search_path
		end	 
  end

 #@school = User.search.where("city LIKE ?","#{params[:search]}%")
 #binding.pry
 # @school = User.search(params[:city]) if params[:commit]=="Search"

  def search
    
  	@course = Course.all
    city = User.pluck(:city).uniq
    @city = city.reject { |item| item.nil? || item == '' }
    if params[:myparam1].present?
      @school = User.where(:id => params[:myparams]).paginate(:per_page => 1, :page => params[:page])
    elsif @@first_value.present?
     @school = User.where("city LIKE ? AND role = ?","%#{@@first_value[:city]}%","#{@@first_value[:search_role]}").paginate(:per_page => 4, :page => params[:page])
    else
      binding.pry
    end
  end

  def show
    #binding.pry
    @college 	= User.find(id = params[:id])
    @all_college = User.where(:role => "school")
    @course_detail = @college.courses #All Course Details
    @scholership = @college.scholarships
    @placement = @college.placements
    @news = @college.school_informations
    @gallery = @college.school_pictures
    @video = @college.school_videos

  end


  def find_all_course_name
      binding.pry
      @stream = Course.find_by_id(params[:myparam1])
  end
 
end
