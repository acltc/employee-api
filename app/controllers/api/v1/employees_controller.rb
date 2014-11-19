class Api::V1::EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id]) 
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render :show
    else
      render json: {message: 'Employee not created'}, status: 422
    end
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    if @employee.update(employee_params)
      render :show
    else
      render json: {message: 'Employee not updated'}, status: 422
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email)
  end
  
end