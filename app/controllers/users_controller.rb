class UsersController < ApplicationController
  
  def index
   city = User.pluck(:city).uniq
   @city = city.reject { |item| item.nil? || item == '' }
   @role = User.pluck(:role).uniq
   @course = Course.pluck(:course_name).uniq
   @school 	= User.where(:role => "school")
   @student = User.where(:role => "student")
   @teacher = User.where(:role => "teacher")
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
      @school1 = User.where(:id => params[:myparams]).paginate(:per_page => 1, :page => params[:page])
      render json: {:event => @school1}
    elsif @@first_value.present?
      #binding.pry
     @school = User.where("city LIKE ? AND role = ?","%#{@@first_value[:city]}%","#{@@first_value[:search_role]}").paginate(:per_page => 4, :page => params[:page])
    
    else
    end
  end

  def show
    @college 	= User.find(id = params[:id])
    @all_college = User.where(:role => "school")
    @course_detail = @college.courses #All Course Details
    @scholership = @college.scholarships
    @placement = @college.placements
    @news = @college.school_informations
    @gallery = @college.school_pictures
    @videos = @college.school_videos

  end

  def student_show
    @student = User.find(id = params[:id])
    @state = State.find(@student.state_id) if @student.state_id.present?
    @country = Country.find(@student.country_id) if @student.country_id.present?
  end

  def all_view
  end

  def find_all_course_name
    @stream = Course.find_by_id(params[:myparam1])
  end
 
end
