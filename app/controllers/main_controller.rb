class MainController < ApplicationController
  def login
  end

  def new
  end

  def logout
    session.delete(:login_uid)
    redirect_to root_path
  end
end
