# app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
  
    private
  
    def log_in(employee)
      p "======================== session ========================================"
      p session[:user_id] = employee.id
      p "============================= session ==================================="
    end
  
    def log_out
      p "======================== session logout ================================="
      p session.delete(:user_id)
      p "======================== session logout ================================="
      @current_user = nil
    end
  
    def current_user
      p "======================== current user ================================="
      @current_user_email ||= Employee.where(id: session[:user_id]).select(:employee_email).first&.employee_email if session[:user_id]
      p @current_user_email
      p "======================== current user ================================="
    end
  
    def logged_in?
      !current_user.nil?
    end
  end
  