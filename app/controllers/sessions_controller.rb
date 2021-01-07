class SessionsController < ApplicationController
  def new
    if logged_in?
      redirect_to user_path(@current_user.id)
      flash[:notice] = 'ログイン済みです'
    end
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      flash[:notice] = 'ログイン！'
      redirect_to user_path(user.id)
    else
      flash[:notice] = 'ログイン失敗！'
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to new_session_path flash[:notice] = 'ログアウトしました。'
  end
end
