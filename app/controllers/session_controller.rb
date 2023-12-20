class SessionController < ApplicationController
     skip_before_action :verify_authenticity_token
     require 'bcrypt'
     
  def login
    logger.debug("ログインする機能")
    @login = Login.all
   
    if params[:pass].nil?
      render "login"
    else
      if (user = Login.find_by(uid: params[:uid])) && BCrypt::Password.new(user.pass) == params[:pass]
        session[:login_uid] = params[:uid]
        logger.debug("login_go")
        @Recipt=Recipt.all
        render 'main/main'
      else
        render "login"
      end
    end
  end
end