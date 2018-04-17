class UsersController < ApplicationController
  
  def index
   city_id = User.pluck(:city_id).uniq
   city = City.find(city_id)
   @city = city.reject { |item| item.nil? || item == '' }
   @role = User.pluck(:role_name).uniq
   @roles = Role.find(@role)
   @course = Course.pluck(:course_name).uniq
   @school 	= User.where(:role_name => "1")
   @student = User.where(:role_name => "3")
   @teacher = User.where(:role_name => "2")
   @vendor = User.where(:role_name => "4")
   if params[:commit]=="Search"
   		@@first_value = params[:user]
			redirect_to users_search_path
		end	 
  end

  def search
  	@course = Course.all
    city_id = User.pluck(:city_id).uniq
    city = City.find(city_id)
    @city = city.reject { |item| item.nil? || item == '' }
    if params[:myparam1].present?
      @school1 = User.where(:id => params[:myparams]).paginate(:per_page => 1, :page => params[:page])
      render json: {:event => @school1}
    elsif @@first_value.present?
      @school = User.where("city_id LIKE ? AND role_name = ?","%#{@@first_value[:city]}%","#{@@first_value[:search_role]}").paginate(:per_page => 4, :page => params[:page])
    else
    end
  end

  def show
    @college 	= User.find(id = params[:id])
    @colleges = User.where.not(:id => @college)
    @all_college = @colleges.where("city_id = ? AND role_name = ?",@college.city_id,@college.role_name)
    @facilities =  @college.campus
    @course_detail = @college.courses #All Course Details
    @scholership = @college.scholarships
    @placement = @college.placements
    @news = @college.school_informations
    @gallery = @college.school_pictures
    @videos = @college.school_videos

  end

  def student_show
    @user = User.find(id = params[:id])
    @city = City.find(@user.city_id) if @user.city_id.present?
    @state = Stat.find(@user.state_id) if @user.state_id.present?
    @country = Countr.find(@user.country_id) if @user.country_id.present?
    @slots = @user.slots if @user.slots.present?
    @notes = @user.sale_notes if @user.sale_notes.present?
    @videos = @user.demo_videos if @user.demo_videos.present?
  end

  def current_requirements
    @user = User.find(params[:format])
    @teachers  = @user.teacher_requires
    @vendors  = @user.vendor_requires
  end

  def apply_to_post
     if !user_signed_in?
      redirect_to new_user_session_path
     else 
        
     end
  end

  def all_school
   @school   = User.where(:role_name => "1")
  end
  def all_student
    @student = User.where(:role_name => "3")
  end

  def all_teacher
    @teacher = User.where(:role_name => "2")
  end

  def all_vendor
   @vendor = User.where(:role_name => "4")
  end
  def find_all_course_name
    @stream = Course.find_by_id(params[:myparam1])
  end
 
end
