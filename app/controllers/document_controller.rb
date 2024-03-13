class DocumentController < ApplicationController
  def index
  end
  def alldocuments
    @documents = Document.all
  end

  def new
    @unique_departments = Department.select(:name).distinct.pluck(:name)
    @unique_employees = Employee.select(:employee_name).distinct.pluck(:employee_name)
    p "------------param------------"
    p params
    p "------------param------------"
    p document = Document.new
    p document.doc_id = params[:document_number]
    p document.doc_name = params[:document_name]
    p document.doc_amount = params[:amount]
    p document.submission_date = params[:submission_date] 
    p document.save

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
