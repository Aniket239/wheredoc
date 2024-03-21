class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  before_action :authenticate_user!

  private

  def log_in(employee)
    cookies.encrypted[:user_id] = employee.id
    cookies.encrypted[:user_id]
  end

  def log_out
    cookies.delete(:user_id)
    @current_user = nil
  end

  def current_user
    @current_user ||= Employee.find_by(id: cookies.encrypted[:user_id])
    @current_user_email = @current_user&.employee_email
    @current_user
  end
  
  

  def logged_in?
    current_user.present?
  end

  def authenticate_user!
    unless logged_in?
      redirect_to setup_login_path
    end
  end
end
