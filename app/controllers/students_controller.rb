class StudentsController < ApplicationController

	before_action :set_school

  def index

  end

  def pay_fees_school
  	 if request.get?
      @school_fees = PayFee.new
    else
      @school_fees = @school.pay_fees.create(pay_fee_params)
      if @school_fees.save
        redirect_to students_path,notice: "Fees Saved Succesfully"
      else 
      end
    end 
  end

  def pay_fees_tutor
  end

  def sale_book
  end


  private

  def set_school
      @school = User.find_by_id(current_user)
  end

  def pay_fee_params
  	params.require(:pay_fee).permit(:name, :email,:phone_no,:name_of_school, :user_id,:user_type)
  end
  
end
