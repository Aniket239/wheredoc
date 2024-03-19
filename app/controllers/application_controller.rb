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
    if cookies.encrypted[:user_id].present?
      @current_user_email ||= Employee.find_by(id: cookies.encrypted[:user_id])&.employee_email
      p @current_user_email
    end
    p "======================== current user ================================="
    @current_user_email
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
