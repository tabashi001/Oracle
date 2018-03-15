class TeachersController < ApplicationController
before_action :set_teacher, only:[:index,:apply_school,:find_student,:sale_notes,:create_sale_notes,
:update_sale_notes]
	
	def index
	end

	def apply_school
		@schools = User.where(:role => "school")
	end

	def find_student
		@students = User.where(:role => "student")
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
    	params.require(:sale_note).permit(:title, :description, :document, :user_id)
  	end
end
