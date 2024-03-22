class DocumentController < ApplicationController
  def index
  end
  def alldocuments
    @documents = Document.includes(:department, :employee).where(employees: { id: current_user&.id })
    p @documents                     
  end
  

  def new
    @unique_departments = Department.department_list
    @unique_employees = Employee.employee_list

  end

  def edit
  end
  def create 
    document = Document.new
    document.doc_id = params[:document_number]
    document.doc_name = params[:document_name]
    document.doc_amount = params[:amount]
    document.department_id = params[:employee_department_id]
    document.employee_id = params[:employee_name_id]
    document.submission_date = params[:submission_date] 
    document.save
    redirect_to document_alldocuments_path
  end
  
  def update

  end
  def delete
    document = Document.find(params[:format])
    document.destroy
    redirect_to document_alldocuments_path
  end

end
