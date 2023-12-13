class MainController < ApplicationController
 def main
  @Recipt=Recipt.all
 end
 def InRecipt
    
   render 'InRecipt'
 end
 def all
  @Recipt=Recipt.all
  render 'main/main'
 end
 def m1
  @Recipt=Recipt.where(day: '2023-11-')
  render 'main/main'
 end
 
end
