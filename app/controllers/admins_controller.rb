class AdminsController < ApplicationController
before_action :find_admin, only: [:schools,:teachers,:students,:vensors,:school_update,:activate,:compose_test,:select_question]

	def index
		@schools_count = User.where(:role_name => "1").count
		@teachers_count = User.where(:role_name => "2").count
		@students_count = User.where(:role_name => "3").count
		@vendors_count = User.where(:role_name => "4").count
	end

	def schools
		@schools = User.where(:role_name => "1")
	end
	def teachers
		@teachers = User.where(:role_name => "2")
	end
	def students
		@students = User.where(:role_name => "3")
	end
	def vendors
		@vendors = User.where(:role_name => "4")
	end
	
	def school_update
		@countries = Countr.all
	    @states = []
	    @cities = []
	    if params[:country].present? or params[:state].present?
	      @states = Stat.where(:countr_id => params[:country] )
	      @cities = City.where(:stat_id => params[:state] )
	    end
	    if request.xhr?
	      respond_to do |format|
	        format.json {
	          render json: {states: @states} if params[:country].present?
	          render json: {cities: @cities} if params[:state].present?
	        }
	      end
	    end
		if request.get?
			@school = User.find(params[:admin_id])
		else
			@user =  User.find(params[:admin_id])
			if @user.update(user_params)
      			if @user.role_name == "1"
			       	redirect_to admin_schools_path
			       elsif @user.role_name == "2"
			       	redirect_to admin_teachers_path
			       elsif @user.role_name == "3"
			       	redirect_to admin_students_path
			    else @user.role_name == "4"
			       	redirect_to admin_vendors_path
			    end
		    else
		      redirect_to :back, notice: "Failed to update profile!"
		  end
		end
    end

	def activate
	    @user = User.find(params[:admin_id])
	    if @user.active == false
	       @user.update(active: true)
	       if @user.role_name == "1"
	       	redirect_to admin_schools_path
	       elsif @user.role_name == "2"
	       	redirect_to admin_teachers_path
	       elsif @user.role_name == "3"
	       	redirect_to admin_students_path
	       else @user.role_name == "4"
	       	redirect_to admin_vendors_path
	       end
	    else @user.active == true
	       @user.update(active: false)
	       if @user.role_name == "1"
	       	redirect_to admin_schools_path
	       elsif @user.role_name == "2"
	       	redirect_to admin_teachers_path
	       elsif @user.role_name == "3"
	       	redirect_to admin_students_path
	       else @user.role_name == "4"
	       	redirect_to admin_vendors_path
	       end
	    end
  	end

  	def video_upload
  		if request.get?
  			@video = SchoolVideo.new
  			@user = User.find(params[:admin_id])
  		else
  			@user = User.find(params[:admin_id])
  			@video = @user.school_videos.create(video_params)
  			if @video.save
  				if @user.role_name == "1"
	       			redirect_to admin_schools_path
	       		else @user.role_name == "2"
	       			redirect_to admin_teachers_path
	       		end
	       end
	   end
	end

	def compose_test
	end

    def select_question
	end
	private

	def find_admin
		if current_admin.blank?
			redirect_to admins_login_path
		else
			@admin = Admin.find(current_admin.id)
		end
	end

	def user_params
    	params.require(:user).permit(:name,:email,:address,:phone_no,:country_id,:state_id,:city_id,
    	:pincode,:qualification,:description,:profile_image,:cover_image)
  	end

  	def video_params
    	params.require(:school_video).permit(:title, :description, :video,:youtube_url, :user_id)
  	end
end
