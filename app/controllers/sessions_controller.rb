class SessionsController < ApplicationController
  def new
  end

  def create
    n = params[:name]
    p = params[:password]

    if u = User.find_by(name: n).try(:authenticate, p)
      session[:user_id] = u.id
      redirect_to root_path
    else
      render :new
    end
  end
end
