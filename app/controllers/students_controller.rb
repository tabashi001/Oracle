class StudentsController < ApplicationController
  before_action :set_school

  def index
    @schools_count = @student.applied_schools.count
    @teachers_count = @student.applied_teachers.count
  end

  def pay_fees_school
    @school_name = User.where(:role_name => "1")
  	 if request.get?
      @school_fees = PayFee.new
    else
      @school_fees = @student.pay_fees.create(pay_fee_params)
      if @school_fees.save
        redirect_to students_path 
      else 
      end
    end 
  end

  def fee_details
  end

  def pay_fees_tutor
    @teacher_name = User.where(:role_name => "2")
     if request.get?
      @teacher_fees = PayFeeToTeacher.new
    else
      @teacher_fees = @student.pay_fee_to_teachers.create(pay_fee_to_teacher_params)
      if @teacher_fees.save
        redirect_to students_path 
      else 
      end
    end 
  end

  def sale_book
     if request.get?
      @sale_book = SaleNote.new
    else
      @sale_book = @student.sale_notes.create(sale_book_params)
      if @sale_book.save
        redirect_to students_path 
      else 
      end
    end 
  end

  def schools
    @schools = User.where(:role_name => "1")
    @name = @schools.pluck(:qualification).uniq
    @city_id = @schools.pluck(:city_id)
    @cities = City.find(@city_id)
    @search = User.where("city_id = ? AND qualification= ?", params[:city_id],params[:name]) if params[:name] && params[:city_id].present?
  end
  def apply_school
    if request.get?
      @apply_school = AppliedSchool.new
      @school = User.find_by_id(params[:student_id])
    else
      @apply_school = @student.applied_schools.create(apply_school_params)
        if @apply_school.save
            redirect_to student_schools_path
        else 
        end
      end 
  end

  def teachers
    @teachers = User.where(:role_name => "2")
    @name = @teachers.pluck(:name)
    @city_id = @teachers.pluck(:city_id)
    @cities = City.find(@city_id)
    @subjects = @teachers.pluck(:qualification).uniq
    @search = User.where("city_id= ? AND qualification= ?",params[:city_id],params[:qualification]) if params[:city_id] && params[:qualification].present?
  end
  def apply_teacher
    if request.get?
      @apply_teacher = AppliedTeacher.new
      @teacher = User.find_by_id(params[:student_id])
    else
      @apply_teacher = @student.applied_teachers.create(apply_teacher_params)
        if @apply_teacher.save
            redirect_to student_teachers_path
        else 
        end
      end 
  end

  def slots
    @apply_teacher = AppliedTeacher.new
    @teacher = User.find(params[:student_id])
    @slots = @teacher.slots
  end

  def books
    @buy_book = BuyBook.new
    # @teacher = User.find(params[:student_id])
    # @books = @teacher.sale_notes
    @search = SaleNote.where("title LIKE ?", "%#{params[:notes]}%") if params[:notes].present?
    @user = SaleNote.where.not(:user_id => current_user.id)
    @books = @user.all
  end
  def buy_book
    if request.get?
      @buy_book = BuyBook.new
      @book = User.find_by_id(params[:student_id])
    else
      @buy_book = @student.buy_books.create(buy_book_params)
        if @buy_book.save
            redirect_to student_teachers_path
        else 
        end
      end 
  end

  private

  def set_school
      @student = User.find_by_id(current_user)
  end

  def pay_fee_params
  	params.require(:pay_fee).permit(:name,:email,:phone_no,:name_of_school,:user_id,:user_type)
  end

  def pay_fee_to_teacher_params
    params.require(:pay_fee_to_teacher).permit(:name,:email,:phone_no,:teacher_name,:user_id,:user_role)
  end

  def sale_book_params
    params.require(:sale_note).permit(:title,:description,:document,:user_id)
  end

  def apply_school_params
      params.require(:applied_school).permit(:name,:email,:phone_no,:description,:school_id,:user_id,:role)
  end

  def apply_teacher_params
      params.require(:applied_teacher).permit(:name,:email,:phone_no,:description,:teacher_id,:user_id,:user_role)
  end

  def buy_book_params
      params.require(:buy_book).permit(:name,:email,:phone_no,:description,:book_id,:user_id,:user_role)
  end
  
end
