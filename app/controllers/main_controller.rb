class MainController < ApplicationController

 def InRecipt
  #レシート入力欄を開く
   render 'InRecipt'
 end
 
 
  def main
  @Recipt=Recipt.all
 end
 
 def all
  @Recipt=Recipt.all
  render 'main/main'
 end
 
 def m1
  start_date = Date.parse('2023-01-01')
  end_date = Date.parse('2023-01-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m2
  start_date = Date.parse('2023-02-01')
  end_date = Date.parse('2023-02-30')

  @Recipt = Recipt.where(day: start_date..end_date)
  render 'main/main'
 end
 
 def m3
  start_date = Date.parse('2023-03-01')
  end_date = Date.parse('2023-03-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m4
  start_date = Date.parse('2023-04-01')
  end_date = Date.parse('2023-04-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m5
  start_date = Date.parse('2023-05-01')
  end_date = Date.parse('2023-05-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m6
  start_date = Date.parse('2023-06-01')
  end_date = Date.parse('2023-06-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m7
  start_date = Date.parse('2023-07-01')
  end_date = Date.parse('2023-07-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m8
  start_date = Date.parse('2023-08-01')
  end_date = Date.parse('2023-08-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m9
  start_date = Date.parse('2023-09-01')
  end_date = Date.parse('2023-09-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m10
  start_date = Date.parse('2023-010-01')
  end_date = Date.parse('2023-010-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m11
  start_date = Date.parse('2023-11-01')
  end_date = Date.parse('2023-11-30')

  @Recipt = Recipt.where(day: start_date..end_date)
  render 'main/main'
 end
 
 def m12
  start_date = Date.parse('2023-12-01')
  end_date = Date.parse('2023-12-30')

  @Recipt = Recipt.where(day: start_date..end_date)
  render 'main/main'
 end
 
end
