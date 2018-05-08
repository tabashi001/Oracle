class SchoolsController < ApplicationController
before_action :set_school, only:[:overview,:update_overview,:courses,:update_course, :course,
  :scholarship,:scholarships,:update_scholarship,:placements,:update_placement,:placement,
  :cutoffs, :cutoff,:update_cuttoff,:campus,:campu,:update_campu,:schoolinformations,:schoolinformation,
  :update_schoolinformation,:schoolpictures,:schoolpicture,:update_schoolpicture,:schoolvideos,
  :schoolvideo,:update_schoolvideo,:teachers,:vendors,:students,:requirements,:teacher_requirement,:vendor_requirement]

  before_action :check_user_signed_in
  before_action :check_activation_for_users, except: [:update_course, :destroy_course, :update_scholarship, :destroy_scholarship, :update_placement, :destroy_placement, :update_cutoff, :destroy_cutoff,  :update_campu, :destroy_campu, :update_schoolinformation, :destroy_schoolinformation, :update_schoolpicture, :destroy_schoolpicture, :update_schoolvideo, :destroy_schoolvideo, :update_teacher_requirement, :destroy_teacher_requirement, :update_vendor_requirement, :destroy_vendor_requirement]

  def index
    @course_count = Course.where("user_id = ?",set_school).count
    @scholar_count = Scholarship.where("user_id = ?",set_school).count
    @placement_count = Placement.where("user_id = ?",set_school).count
    @cutoff_count = Cutoff.where("user_id = ?",set_school).count
    @campus_count = Campu.where("user_id = ?",set_school).count
    @news_count = SchoolInformation.where("user_id = ?",set_school).count
    @picture_count = SchoolPicture.where("user_id = ?",set_school).count
    @video_count = SchoolVideo.where("user_id = ?",set_school).count
    @teachers_count = AppliedSchool.where("role= ?","2").count
    @vendors_count = AppliedSchool.where("role= ?","4").count
    @students_count = AppliedSchool.where("school_id = ? AND role= ?",@school,"3").count
  end

  def teachers
    @teacher_requirements = @school.teacher_requires
  end
  def vendors
    @vendor_requirements = @school.vendor_requires
  end
  def students
    @students = AppliedSchool.where("school_id = ? AND role= ?",@school,"3")
  end

  def overview
    if request.get?
      @overview = Overview.new
    else
      @overview = @school.overviews.create(overview_params)
      if @overview.save
        redirect_to schools_path
      else 
      end
    end 
  end

  def update_overview
    if request.get?
      @id = @school.overviews.first
      @overview = Overview.find_by_id(@id)
    else
      if @school.overviews.update(overview_params)
        redirect_to schools_path
      else 
      end
    end
  end

  def courses
    @courses = @school.courses
  end
  
  def course
    if request.get?
      @course = Course.new
      @streams = Stream.all
      @degrees = [] 
      if params[:stream].present?
        @degrees = Degree.where(:stream_id => params[:stream] )
      end
      if request.xhr?
        respond_to do |format|
          format.json {
            render json: {degrees: @degrees} if params[:stream].present?
          }
        end
      end
    else
      @course = @school.courses.new(course_params)
      if @course.save(validate: false)
        @course.create_course(params[:courses], params[:fees]) if params[:courses]
        redirect_to school_courses_path
      else 
      end
    end 
  end
  def update_course
    if request.get?
      @course = Course.find(params[:school_id])
      @streams = Stream.all
      if @course.degree_id.present?
        degree = Degree.find(@course.degree_id) if @course.degree_id.present?
        @degrees = [degree] 
      else
        @degrees = [] 
      end
      if params[:stream].present?
        @degrees = Degree.where(:stream_id => params[:stream] )
      end
      if request.xhr?
        respond_to do |format|
          format.json {
            render json: {degrees: @degrees} if params[:stream].present?
          }
        end
      end
    else
      @course = Course.find(params[:school_id])
        @course.create_course(params[:courses], params[:fees]) if params[:courses]
      
      if @course.update(course_params)
        redirect_to school_courses_path
      else
      end
    end
  end
  def destroy_course
    @course = Course.find(params[:school_id])
    if @course.delete
      redirect_to school_courses_path
    else
    end
  end

  def scholarships
    @scholars = @school.scholarships
  end
  def scholarship
    if request.get?
      @scholar = Scholarship.new
    else
      @scholar = @school.scholarships.create(scholar_params)
        if @scholar.save
          redirect_to school_scholarships_path
        else 
        end
    end 
  end
  def update_scholarship
    if request.get?
      @scholar = Scholarship.find(params[:school_id])
    else
      @scholar = Scholarship.find(params[:school_id])
      if @scholar.update(scholar_params)
        redirect_to school_scholarships_path
      else
      end
    end
  end
  def destroy_scholarship
    @scholar = Scholarship.find(params[:school_id])
    if @scholar.destroy
      redirect_to school_scholarships_path
    else
    end
  end

  def placements
    @placements = @school.placements
  end
  def placement
    if request.get?
      @placement = Placement.new
    else
      @placement = @school.placements.create(placement_params)
        if @placement.save
          redirect_to school_placements_path,notice: 'Placement details saved successfully'
        else 
        end
    end 
  end
  def update_placement
    if request.get?
      @placement = Placement.find(params[:school_id])
    else
      @placement = Placement.find(params[:school_id])
      if @placement.update(placement_params)
        redirect_to school_placements_path
      else
      end
    end
  end
  def destroy_placement
    @placement = Placement.find(params[:school_id])
    if @placement.destroy
      redirect_to school_placements_path
    else
    end
  end

  def cutoffs
    @cutoffs = @school.cutoffs
  end
  def cutoff
    if request.get?
      @cutoff = Cutoff.new
    else
      @cutoff = @school.cutoffs.create(cutoff_params)
        if @cutoff.save
          redirect_to school_cutoffs_path
        else 
        end
    end 
  end
  def update_cutoff
    if request.get?
      @cutoff = Cutoff.find(params[:school_id])
    else
      @cutoff = Cutoff.find(params[:school_id])
      if @cutoff.update(cutoff_params)
        redirect_to school_cutoffs_path
      else
      end
    end
  end
  def destroy_cutoff
    @cutoff = Cutoff.find(params[:school_id])
    if @cutoff.destroy
      redirect_to school_cutoffs_path
    else
    end
  end

  def campus
    @campus = @school.campus
  end
  def campu
    if request.get?
      @campu = Campu.new
    else
      @campu = @school.campus.create(campu_params)
        if @campu.save
          redirect_to schools_path
        else 
        end
    end 
  end
  def update_campu
    if request.get?
      @id = @school.campus.first
      @campu = Campu.find_by_id(@id)
    else
      @id = @school.campus.first
      @campu = Campu.find_by_id(@id)
      if @campu.update(campu_params)
        redirect_to schools_path
      else
      end
    end
  end
  def destroy_campu
    @campu = Campu.find(params[:school_id])
    if @campu.destroy
      redirect_to school_campus_path
    else
    end
  end

  def schoolinformations
    @news = @school.school_informations
  end
  def schoolinformation
    if request.get?
      @news = SchoolInformation.new
    else
      @news = @school.school_informations.create(news_params)
        if @news.save
          redirect_to school_schoolinformations_path
        else 
        end
    end 
  end
  def update_schoolinformation
    if request.get?
      @news = SchoolInformation.find(params[:school_id])
    else
      @news = SchoolInformation.find(params[:school_id])
      if @news.update(news_params)
        redirect_to school_schoolinformations_path
      else
      end
    end
  end
  def destroy_schoolinformation
    @news = SchoolInformation.find(params[:school_id])
    if @news.destroy
      redirect_to school_schoolinformations_path
    else
    end
  end

  def schoolpictures
    @pictures = @school.school_pictures
  end
  def schoolpicture
    if request.get?
      @picture = SchoolPicture.new
    else
      @picture = @school.school_pictures.new(schoolpicture_params)
        if @picture.save(validate: false)
          @picture.create_images(params[:images]) if params[:images]
          redirect_to school_schoolpictures_path
        else 
        end
    end 
  end
  def update_schoolpicture
    if request.get?
      @picture = SchoolPicture.find(params[:school_id])
    else
      @picture = SchoolPicture.find(params[:school_id])
      if @picture.update(schoolpicture_params)
        @picture.create_images(params[:images]) if params[:images]
        redirect_to school_schoolpictures_path
      else
      end
    end
  end
  def destroy_schoolpicture
    @picture = SchoolPicture.find(params[:school_id])
    if @picture.destroy
      redirect_to school_schoolpictures_path
    else
    end
  end

  def schoolvideos
    @videos = @school.school_videos
  end
  def schoolvideo
    if request.get?
      @video = SchoolVideo.new
    else
      @video = @school.school_videos.create(schoolvideo_params)
        if @video.save
          redirect_to school_schoolvideos_path
        else 
        end
    end 
  end
  def update_schoolvideo
    if request.get?
      @video = SchoolVideo.find(params[:school_id])
    else
      @video = SchoolVideo.find(params[:school_id])
      if @video.update(schoolvideo_params)
        redirect_to school_schoolvideos_path
      else
      end
    end
  end
  def destroy_schoolvideo
    @video = SchoolVideo.find(params[:school_id])
    if @video.destroy
      redirect_to school_schoolvideos_path
    else
    end
  end

  def requirements
    @teachers_post = @school.teacher_requires
    @vendors_post = @school.vendor_requires
  end
  def post_requirements
    @teacher_post = TeacherRequire.new
    @vendor_post = VendorRequire.new
  end

  def teacher_requirement
    @post = @school.teacher_requires.create(teacher_require_params)
    if @post.save
      redirect_to school_requirements_path
    else 
    end
  end
  def update_teacher_requirement
    if request.get?
      @teacher_post = TeacherRequire.find(params[:school_id])
    else
      @teacher_post = TeacherRequire.find(params[:school_id])
      if @teacher_post.update(teacher_require_params)
        redirect_to school_requirements_path
      else
      end
    end
  end
  def destroy_teacher_requirement
    @teacher_post = TeacherRequire.find(params[:school_id])
    if @teacher_post.destroy
      redirect_to school_requirements_path
    else
    end
  end

  def vendor_requirement
    @post = @school.vendor_requires.create(vendor_require_params)
    if @post.save
      redirect_to school_requirements_path
    else 
    end
  end
  def update_vendor_requirement
    if request.get?
      @vendor_post = VendorRequire.find(params[:school_id])
    else
      @vendor_post = VendorRequire.find(params[:school_id])
      if @vendor_post.update(vendor_require_params)
        redirect_to school_requirements_path
      else
      end
    end
  end
  def destroy_vendor_requirement
    @vendor_post = VendorRequire.find(params[:school_id])
    if @vendor_post.destroy
      redirect_to school_requirements_path
    else
    end
  end

  private

  def set_school
      @school = User.find_by_id(current_user)
  end

  def overview_params
    params.require(:overview).permit(:title, :description, :user_id, :user_type)
  end

  def course_params
    params.require(:course).permit(:degree_name,:course_duration,:course_type,
     :course_fee,:course_affliation,:course_description,:user_id,:new_course_name,
     :new_degree_name,:stream_id,:degree_id,:course_name,course_names_attributes: [:id,:course_name,:stream_id,:degree_id,:_destroy])
  end

  def scholar_params
    params.require(:scholarship).permit(:title, :description, :user_id)
  end

  def placement_params
    params.require(:placement).permit(:title, :description, :companies_visited,
      :students_placed, :total_students, :year, :user_id)
  end

  def cutoff_params
    params.require(:cutoff).permit(:name, :category,:rank, :examination, :percentage,
     :user_id)
  end

  def campu_params
    params.require(:campu).permit(:title, :description, :user_id,:boys_hostel,:girls_hostel,:library,:sports,
      :gym,:s_pool,:p_ground,:canteen,:classroom,:placement,:club,:h_centre,:yoga,:auditorium,:image1,:image2,:image3,:image4)
  end

  def news_params
    params.require(:school_information).permit(:title, :description, :image, :url, :user_id)
  end

  def schoolpicture_params
    params.require(:school_picture).permit(:title, :description, :picture, :user_id,
      school_images_attributes: [:id,:school_picture,:_destroy])
  end

  def schoolvideo_params
    params.require(:school_video).permit(:title, :description, :video, :user_id)
  end

  def teacher_require_params
    params.require(:teacher_require).permit(:name,:qualification,:subject,:level,:new_level,
      :experience,:annual_salary,:job_type,:user_id)
  end

  def vendor_require_params
    params.require(:vendor_require).permit(:name,:location,:article,:vendor_value,:supplier,:user_id)
  end

  def check_activation_for_users
    if params[:school_id].present?# && current_user.blank?
      school = User.find params[:school_id]
      if school.active == false
        flash[:notice] ="This Account has been deactivated, Please contact Admin."
        redirect_to root_path 
      end
    elsif current_user.present?
      schools_path
    else
      redirect_to root_path
    end
  end

end