class RegistrationController < ActionController::Base
     def new
           logger.debug("IDとパスワードを作成する機能")
        if Login.find_by(uid: params[:uid]) 
            #エラー
            render "create_I&P"
        else
            #正常
            #newpass = BCrypt::Password.create(params[:pass])
           @login = Login.new(
                            uid: params[:uid],
                            password: params[:password],
                            password_confirmation: params[:password_confirmation])
            if @login.save
                #ホーム内容に表示する内容のDB
                redirect_to "/"
            else
                render 'create_I&P'
            end
            
 
        end
    end
     
    
    
    
end
