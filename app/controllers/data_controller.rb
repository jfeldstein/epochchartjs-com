class DataController < ApplicationController
  include DataHelper

  def calendar
    # Hack to keep the demo data up to date
    if params[:id].to_i == 1
      render json: dummy_cal_data and return
    end

    # Everyone else actually gets parsed
    @chart = Chart.find params[:id]

    if @chart.calendar_url_is_ical?
      render json: ical_data(@chart.calendar_url) and return
    else
      redirect_to @chart.calendar_url and return
    end
  end

  def show
    data = [
      [ 
        7.days.ago.to_time.to_i*1000,
        120
      ],[
        6.days.ago.to_time.to_i*1000,
        112
      ],[
        5.days.ago.to_time.to_i*1000,
        115
      ],[
        4.days.ago.to_time.to_i*1000,
        165
      ],[
        3.days.ago.to_time.to_i*1000,
        125
      ],[
        2.days.ago.to_time.to_i*1000,
        130
      ],[
        1.days.ago.to_time.to_i*1000,
        142
      ]]

    render json: data
  end
end
