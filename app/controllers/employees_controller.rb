class EmployeesController < ApplicationController
	respond_to :js
	#Show modal popup to display full employee profile
	def show 
		@employee = Employee.find(params[:id])
		respond_with @employee, status: 200 
	end
end
