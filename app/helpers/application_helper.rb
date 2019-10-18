module ApplicationHelper
  # def current_employee
  #   @current_employee ||= Employee.find_by(id: session[:employee_id])
  # end

  # def logged_in?
  #   !current_employee.nil?
  # end
  
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end
end
