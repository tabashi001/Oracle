class TeachersController < ApplicationController
before_action :set_teacher, only:[:index,:schools,:apply_school,:find_student,:sale_notes,:create_sale_notes,
:update_sale_notes]
	
	def index
		@schools_count = @teacher.applied_schools.count
	end

	def schools
		@schools = User.where(:role => "school")
		@search = User.where("name = ? AND city= ?", params[:name],params[:city]) if params[:name] && params[:city].present?
	end
	def apply_school
		if request.get?
			@apply_school = AppliedSchool.new
			@school = User.find_by_id(params[:teacher_id])
		else
			@apply_school = @teacher.applied_schools.create(apply_school_params)
		    if @apply_school.save
		        redirect_to teacher_schools_path
		    else 
		    end
    	end 
	end

	def find_student
		@students = User.where(:role => "student")
		@search = @students.where("name = ? OR qualification= ? OR city=?", 
					params[:name],params[:qualification],params[:city])
					if params[:name] && params[:qualification] && params[:city].present?
	end
end

	def sale_notes
		@sale_notes = @teacher.sale_notes
	end
	def create_sale_notes
		if request.get?
			@sale_notes = SaleNote.new
		else
			@sale_notes = @teacher.sale_notes.create(sale_notes_params)
		    if @sale_notes.save
		        redirect_to teacher_sale_notes_path
		    else 
		    end
    	end 
	end
	def update_sale_notes
	    if request.get?
	      @sale_notes = SaleNote.find(params[:teacher_id])
	    else
	      @sale_notes = SaleNote.find(params[:teacher_id])
	      if @sale_notes.update(sale_notes_params)
	        redirect_to teacher_sale_notes_path
	      else
	      end
	    end
  	end
  	def sale
	    @sale_notes = SaleNote.find(params[:teacher_id])
	    if @sale_notes.sale == true
	       @sale_notes.update(sale: false)
	       redirect_to teacher_sale_notes_path
	    else @sale_notes.sale == false
	       @sale_notes.update(sale: true)
	       redirect_to teacher_sale_notes_path
	    end
  	end
  	def destroy_sale_notes
	    @sale_notes = SaleNote.find(params[:teacher_id])
	    if @sale_notes.destroy
	      redirect_to teacher_sale_notes_path
	    else
	    end
  	end

	private

	def set_teacher
	    @teacher = User.find_by_id(current_user)
	end

	def sale_notes_params
    	params.require(:sale_note).permit(:title,:description,:document,:user_id)
  	end

  	def apply_school_params
    	params.require(:applied_school).permit(:name,:email,:phone_no,:description,:school_id,:user_id,:role)
  	end
end
