class MainController < ApplicationController


 def main
  @Recipt=Recipt.all
  params[:pay] ||= 0
  
 end
 
 def main_mon
  @today = Date.today
  from_date = Date.new(@today.year, @today.month, @today.beginning_of_month.day).beginning_of_week(:sunday)
  to_date = Date.new(@today.year, @today.month, @today.end_of_month.day).end_of_week(:sunday)
  @calendar_data = from_date.upto(to_date)

 end
 
 def InRecipt
  #レシート入力欄を開く
   render 'InRecipt'
 end
 
 
 def all
  @Recipt=Recipt.all
  render 'main/main'
 end
 
 def m1
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-01-01')
  end_date = Date.parse(y+'-01-31')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m2
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-02-01')
  end_date = Date.parse(y+'-02-'+(Date.new(Date.today.year, 2).end_of_month.day).to_s)

  @Recipt = Recipt.where(day: start_date..end_date)
  render 'main/main'
 end
 
 def m3
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-03-01')
  end_date = Date.parse(y+'-03-31')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m4
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-04-01')
  end_date = Date.parse(y+'-04-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m5
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-05-01')
  end_date = Date.parse(y+'-05-31')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m6
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-06-01')
  end_date = Date.parse(y+'-06-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m7
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-07-01')
  end_date = Date.parse(y+'-07-31')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m8
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-08-01')
  end_date = Date.parse(y+'-08-31')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m9
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-09-01')
  end_date = Date.parse(y+'-09-30')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m10
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-10-01')
  end_date = Date.parse(y+'-10-31')
  @Recipt=Recipt.where(day: start_date..end_date)
   render 'main/main'
 end
 
 def m11
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-11-01')
  end_date = Date.parse(y+'-11-30')

  @Recipt = Recipt.where(day: start_date..end_date)
  render 'main/main'
 end
 
 def m12
   y=(Date.today.year).to_s
  start_date = Date.parse(y+'-12-01')
  end_date = Date.parse(y+'-12-31')

  @Recipt = Recipt.where(day: start_date..end_date)
  render 'main/main'
 end
 
end
