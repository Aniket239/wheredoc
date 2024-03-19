class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  before_action :authenticate_user!

  private

  def log_in(employee)
    p "======================== cookies.encrypted ========================================"
    cookies.encrypted[:user_id] = employee.id
    p cookies.encrypted[:user_id]
    p "============================= cookies.encrypted ==================================="
  end

  def log_out
    p "======================== cookies.encrypted logout ================================="
    cookies.delete(:user_id)
    p "======================== cookies.encrypted logout ================================="
    @current_user = nil
  end

  def current_user
    p "======================== current user ================================="
    @current_user ||= Employee.find_by(id: cookies.encrypted[:user_id])
    p@current_user_email = @current_user&.employee_email
    p "======================== current user ================================="
    @current_user
  end
  
  

  def logged_in?
    current_user.present?
  end

  def authenticate_user!
    unless logged_in?
      p "======================== redirect to login ============================="
      redirect_to setup_login_path
    end
  end
end
