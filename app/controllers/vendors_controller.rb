class VendorsController < ApplicationController
before_action :set_vendor, only:[:index,:schools,:apply_school]

	def index
		@schools_count = @vendor.applied_schools.count
	end

  	def schools
		@schools = User.where(:role => "school")
		@search = User.where("name = ? AND city= ?", params[:name],params[:city]) if params[:name] && params[:city].present?
	end
	def apply_school
		if request.get?
			@apply_school = AppliedSchool.new
			@school = User.find_by_id(params[:vendor_id])
		else
			@apply_school = @vendor.applied_schools.create(apply_school_params)
		    if @apply_school.save
		        redirect_to vendor_schools_path
		    else 
		    end
		end 
	end

	private

	def set_vendor
	    @vendor = User.find_by_id(current_user)
	end

  	def apply_school_params
    	params.require(:applied_school).permit(:name,:email,:phone_no,:description,:school_id,:user_id, :role)
  	end
end
