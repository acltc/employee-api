class EmployeesController < ApplicationController
  respond_to :xml, :json

  def show
    @employee = Employee.find_by(id: params[:id])
    respond_with(@employee)
  end
  
end
