 class SessionController < ActionController::Base
 def login
         logger.debug("ログインする機能")
        @login=Login.all
        if params[:pass]==nil
            
            render "login"
        else
            if User.find_by(uid: params[:uid]) 
                user =User.find_by(uid: params[:uid])
                
                if BCrypt::Password.new(user.pass)== params[:pass]
                    session[:login_uid]= params[:uid]
                      logger.debug("login_go")
                       redirect_to '/'
                else
          
                     render "login"
                end
                
            end
        end
        
    end
end