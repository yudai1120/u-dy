class AttendsController < ApplicationController
  def index
    @attends = current_user.attends
  end
  
  def create
    attend = current_user.attends.new(start_time: DateTime.now, day: Date.today)
    
    if attend.save
      redirect_to "/attends", success: "出勤しました。"
    else
      redirect_to "/attends", danger: "記録に失敗しました。"
    end
  end
  
  def punch_out
    
    punch_out = current_user.attends.find_by(day: Date.today)
    punch_out.finish_time = DateTime.now
    if punch_out.save
      redirect_to "/attends", success: "退勤しました。"
    else
      redirect_to "/attends", danger: "記録に失敗しました。"
    end
  end
  
  def break_time
    
    break_time = current_user.attends.find_by(day: Date.today)
    break_time.break_start_time = DateTime.now
    if break_time.save
      redirect_to "/attends", success: "休憩に入りました。"
    else
      redirect_to "/attends", danger: "記録に失敗しました。"
    end
  end
  
  def break_time_end
    
    break_time_end = current_user.attends.find_by(day: Date.today)
    break_time_end.break_finish_time = DateTime.now
    if break_time_end.save
      redirect_to "/attends", success: "休憩終了しました。"
    else
      redirect_to "/attends", danger: "記録に失敗しました。"
    end
  end
  
  def edit
    @attend = Attend.find(params[:id])
  end
  
  def update
    @attend = Attend.find(params[:id])
    @attend.update(params.require(:attend).permit(:start_time, :finish_time, :break_start_time, :break_finish_time))
  redirect_to "/attends"
  end
end
