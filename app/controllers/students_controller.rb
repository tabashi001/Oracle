class StudentsController < ApplicationController
  def index
  end

  def profile
  	#debugger
  	@std_id = current_user.id
  	@std_data = User.find_by_id(@std_id)
  	@student = @std_data.update_attribute(@user_params)
  end


  private

  def user_params
    params.require(:user).permit(:name,:email,:phone)
  end
end
