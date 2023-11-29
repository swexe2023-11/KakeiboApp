class SessionController < ApplicationController
     skip_before_action :verify_authenticity_token
     require 'bcrypt'
     
  def login
    logger.debug("ログインする機能")
    @login = Login.all
    logger.debug(@login.find(2).pass)
     logger.debug(BCrypt::Password.create(Login.find(2).pass))
    Login.find(2).pass=BCrypt::Password.create(Login.find(2).pass)
    logger.debug(@login.find(2).pass)
    if params[:pass].nil?
      render "login"
    else
      if (user = Login.find_by(uid: params[:uid])) && BCrypt::Password.new(user.pass) == params[:pass]
        session[:login_uid] = params[:uid]
        logger.debug("login_go")
        redirect_to '/'
      else
        render "login"
      end
    end
  end
end