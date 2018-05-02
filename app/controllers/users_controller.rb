class UsersController < ApplicationController
  
  def index
    city_id = User.pluck(:city_id).uniq.compact
    city = City.find(city_id).uniq.compact
    @city = city.reject { |item| item.nil? || item == '' }
    @role = User.pluck(:role_name).uniq
    @roles = Role.find(@role)
    @course = Course.pluck(:course_name).uniq.compact
    @school 	= User.where(:role_name => "1")
    @student = User.where(:role_name => "3")
    @teacher = User.where(:role_name => "2")
    @vendor = User.where(:role_name => "4")
    if params[:name] && params[:email] && params[:phoneno] && params[:msg].present?
      fname = params[:name]
      email=params[:email]
      phoneno = params[:phoneno]
      msg = params[:msg]
      ApplicationMailer.mail_method(fname,email,phoneno,msg).deliver_now
    end
  end

  def search
    if params[:commit]=="Search"
      @@first_value = params[:user]
      session[:users] = params[:user]
      @school = User.where("city_id = ? AND role_name = ?","#{@@first_value[:city]}","#{@@first_value[:search_role]}").paginate(:per_page => 4, :page => params[:page])
    elsif  params[:str].present? || params[:fee].present? || params[:affilations].present?
        @search = Course.where("course_affliation IN (?) OR stream_id IN (?)",params[:affilations],params[:str])
        @school  = User.where(:id => @search.map{ |c|c.user_id}).paginate(:per_page => 4, :page => params[:page])
    elsif params[:subjects].present?
      @school = User.where(:role_name => "2",:qualification => params[:subjects]).paginate(:per_page => 4, :page => params[:page])
    elsif params[:classes].present? && session[:users].present?
      @school = User.where(:role_name => "3",:qualification => params[:classes],:city_id => session[:users][:city]).paginate(:per_page => 4, :page => params[:page])
      respond_to do |format| 
        #format.json { render json: @school } 
        format.js
      end
    elsif params[:services].present?
      @school = User.where(:role_name => "4",:qualification => params[:services]).paginate(:per_page => 4, :page => params[:page])
    else session[:users]
       @school = User.where("city_id = ? AND role_name = ?","#{session[:users][:city]}","#{session[:users][:search_role]}").paginate(:per_page => 4, :page => params[:page])
    end
    
    unless @school.blank?
      if @school.first.role_name == "1"
        @all_courses = @school.map{|s| s.courses}.flatten
        @avg =  @school.map{|s| s.courses.map{|a| a.course_fee.gsub(/[\s,]/ ,"").to_i }.inject(0, :+)/s.courses.size if s.courses.present?}.compact
        @streams = @all_courses.map{|s| Stream.find(s.stream_id) if s.stream_id.present? }.uniq
        @degrees = @all_courses.map{|s| Degree.find(s.degree_id) if s.degree_id.present? }.uniq
        @courses = @all_courses.map{|c| c.course_names.uniq}.flatten
        @affilations = @all_courses.pluck(:course_affliation).uniq
        @type = @all_courses.pluck(:course_type).uniq.compact
      elsif @school.first.role_name == "2"
        @subject = @school.pluck(:qualification).uniq.compact
      elsif @school.first.role_name == "3"
        @class = @school.pluck(:qualification).uniq.compact
      else @school.first.role_name == "4"
        @services = @school.pluck(:qualification).uniq.compact
      end
    end    
  end

  def show
    @college 	= User.find(id = params[:id])
    @colleges = User.where.not(:id => @college)
    @all_college = @colleges.where("city_id = ? AND role_name = ?",@college.city_id,@college.role_name).first(4)
    @first_colleges = User.where.not(:id => @all_college)
    @r_college = @first_colleges.where("city_id = ? AND role_name = ?",@college.city_id,@college.role_name)
    @facilities =  @college.campus.first
    @course_detail = @college.courses if @college.courses.present?
    @first = @college.courses.first if @college.courses.present?
    @course_name = @first.course_names if @first.present?
    @courses = @college.courses.where.not("id=?",@first.id) if @first.present?
    @scholership = @college.scholarships
    @placement = @college.placements
    @news = @college.school_informations
    @gallery = @college.school_pictures
    @videos = @college.school_videos
    @admissions = @college.cutoffs
    @reviews = @college.reviews    
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
