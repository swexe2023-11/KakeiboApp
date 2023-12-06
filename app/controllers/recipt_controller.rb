class ReciptController < ApplicationController
    skip_before_action :verify_authenticity_token
    def create
            
    @Recipt = Recipt.new(uid: session[:login_uid],day: params[:day],pay: params[:pay],kind: params[:kind],img: params[:img])
      if @Recipt.save
        flash[:notice] = '1レコード追加しました'
        render 'main/InRecipt'
      else
        render 'InRecipt'
      end
  end
  
end