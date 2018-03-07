class SchoolsController < ApplicationController
before_action :set_school, only:[:overview, :course, :scholarship, :placement,
                                 :cutoff, :campu, :schoolinformation, :schoolpicture, :schoolvideo]

  def index
    @course_count = Course.where("user_id = ?",set_school).count
    @picture_count = SchoolPicture.where("user_id = ?",set_school).count
    @video_count = SchoolVideo.where("user_id = ?",set_school).count
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

  def course
    if request.get?
      @course = Course.new
    else
      @course = @school.courses.create(course_params)
        if @course.save
          redirect_to schools_path
        else 
        end
    end 
  end

  def scholarship
    if request.get?
      @scholar = Scholarship.new
    else
      @scholar = @school.scholarships.create(scholar_params)
        if @scholar.save
          redirect_to schools_path
        else 
        end
    end 
  end

  def placement
    if request.get?
      @placement = Placement.new
    else
      @placement = @school.placements.create(placement_params)
        if @placement.save
          redirect_to schools_path
        else 
        end
    end 
  end

  def cutoff
    if request.get?
      @cutoff = Cutoff.new
    else
      @cutoff = @school.cutoffs.create(cutoff_params)
        if @cutoff.save
          redirect_to schools_path
        else 
        end
    end 
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

  def schoolinformation
    if request.get?
      @news = SchoolInformation.new
    else
      @news = @school.school_informations.create(news_params)
        if @news.save
          redirect_to schools_path
        else 
        end
    end 
  end

  def schoolpicture
    if request.get?
      @picture = SchoolPicture.new
    else
      @picture = @school.school_pictures.create(schoolpicture_params)
        if @picture.save
          redirect_to schools_path
        else 
        end
    end 
  end

  def schoolvideo
    if request.get?
      @video = SchoolVideo.new
    else
      @video = @school.school_videos.create(schoolvideo_params)
        if @video.save
          redirect_to schools_path
        else 
        end
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
    params.require(:course).permit(:course_name, :course_duration,:course_type,
     :course_fee, :course_affliation, :course_description, :user_id)
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
    params.require(:campu).permit(:title, :description, :user_id)
  end

  def news_params
    params.require(:school_information).permit(:title, :description, :image, :url, :user_id)
  end

  def schoolpicture_params
    params.require(:school_picture).permit(:title, :description, :picture, :user_id)
  end

  def schoolvideo_params
    params.require(:school_video).permit(:title, :description, :video, :user_id)
  end

end