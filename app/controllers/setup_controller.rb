class SetupController < ApplicationController
  def index
  end
  def employees
    @employees = Employee.all
  end
  def signup
    @department = Department.select(:name)
  end
  def create
    employee = Employee.new
    employee.employee_name = params[:name]
    employee.employee_email = params[:email]
    employee.department = params[:employee_department]
    employee.employee_mobile_number = params[:mobile_number]
    employee.employee_password = params[:password]
    employee.save
    redirect_to setup_employees_path
  end
  def login
   email=params[:email]
   password=params[:password]
   employee = Employee.find_by(employee_email: email)
   if employee!=nil && employee.employee_password==password
      redirect_to document_index_path
   end
  end
  def delete 
    employee= Employee.find(params[:format])
    employee.destroy
    redirect_to setup_employees_path
  end
  def edit
    @employee= Employee.find(params[:format])
  end
  def update
    employee= Employee.find(params[:employee_id])
    employee.update(employee_name: params[:name],employee_email: params[:email], employee_password: params[:password], employee_mobile_number: params[:mobile])
    redirect_to setup_employees_path
  end
end
