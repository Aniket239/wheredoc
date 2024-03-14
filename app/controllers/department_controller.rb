class DepartmentController < ApplicationController
  def index
    @departments = Department.all
  end

  def new
  end

  def create
    department = Department.new
    department.name = params[:department]
    department.save
    redirect_to department_index_path
  end

  def delete
    department = Department.find(params[:format])
    department.destroy
    redirect_to department_index_path
  end

  def update
    department = Department.find(params[:department_id])
    department.update(name: params[:department])
    redirect_to department_index_path
  end

  def edit
      @department= Department.find(params[:format])
  end
end
