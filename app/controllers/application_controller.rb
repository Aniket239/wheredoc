class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  before_action :authenticate_user!

  private

  def log_in(employee)
    p "======================== cookies ========================================"
    cookies[:user_id] = employee.id
    p cookies[:user_id]
    p "============================= cookies ==================================="
  end

  def log_out
    p "======================== cookies logout ================================="
    cookies.delete(:user_id)
    p "======================== cookies logout ================================="
    @current_user = nil
  end

  def current_user
    p "======================== current user ================================="
    @current_user_email ||= Employee.find_by(id: cookies[:user_id])&.employee_email if cookies[:user_id].present?
    p @current_user_email
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
