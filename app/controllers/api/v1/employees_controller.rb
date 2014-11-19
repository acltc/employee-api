class Api::V1::EmployeesController < ApplicationController
  before_action :restrict_access
  
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
  
  def restrict_access
    authenticate_or_request_with_http_token do |api_key, options|
      User.find_by(:email => request.headers["X-User-Email"], :api_key => api_key)
    end
  end
  
end