class RegistrationController < ActionController::Base
     skip_before_action :verify_authenticity_token
     def create_IP
           logger.debug("IDとパスワードを作成する機能")
        if Login.find_by(uid: params[:uid]) 
            #エラー
            render "create_IP"
        else
            #正常
            #newpass = BCrypt::Password.create(params[:pass])
           @login = Login.new(
                            uid: params[:uid],
                            pass: BCrypt::Password.create(params[:pass]))
            if @login.save
                #ホーム内容に表示する内容のDB
                redirect_to "/"
            else
                render 'create_IP'
            end
            
 
        end
    end
     
    
    
    
end
