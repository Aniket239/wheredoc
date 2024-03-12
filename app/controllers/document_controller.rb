class DocumentController < ApplicationController
  def index
    @documents = Document.all
  end

  def new
    @unique_departments = Employee.select(:employee_department).distinct.pluck(:employee_department)
    @unique_employees = Employee.select(:employee_name).distinct.pluck(:employee_name)
    p "------------`------------"
    p params
    p "------------`------------"
    p document = Document.new

  end

  def edit
  end
  def create

  end
  
  def update

  end

end
