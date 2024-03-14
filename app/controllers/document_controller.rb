class DocumentController < ApplicationController
  def index
  end
  def alldocuments
    @documents = Document.all
  end

  def new
    @unique_departments = Department.select(:name).distinct.pluck(:name)
    @unique_employees = Employee.select(:employee_name).distinct.pluck(:employee_name)
    document = Document.new
    document.doc_id = params[:document_number]
    document.doc_name = params[:document_name]
    document.doc_amount = params[:amount]
    document.submission_date = params[:submission_date] 
    document.save

  end

  def edit
  end
  def create

  end
  
  def update

  end
  def delete
    document = Document.find(params[:format])
    document.destroy
    redirect_to document_alldocuments_path
  end

end
