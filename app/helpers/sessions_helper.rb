module SessionsHelper
  def current_user
    # if session[:user_id]
    #   @current_user ||= User.find(session[:user_id])
    # else
    #   nil
    # end
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present?
  end
end
