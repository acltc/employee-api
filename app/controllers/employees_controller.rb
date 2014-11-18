class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id]) 
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end
  
end
