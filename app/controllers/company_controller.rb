class CompanyController < ApplicationController
  def index
    @companies = Company.all
  end

  def create
    company = Company.new
    company.name = params[:name]
    company.save 
    redirect_to company_index_path
  end

  def new
  end

  def delete
    company = Company.find(params[:format])
    company.destroy
    redirect_to company_index_path
  end

  def update
    company = Company.find(params[:company_id])
    company.update(name: params[:name])
    company.save
    redirect_to company_index_path
  end

  def edit
    @company = Company.find(params[:format])
  end
end
