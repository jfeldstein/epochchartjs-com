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
    # Hack to keep the demo data up to date
    if params[:id].to_i == 1
      render json: dummy_line_data and return
    end

    # Everyone else actually gets parsed
    @chart = Chart.find params[:id]

    if we_parse_this_service(@chart.data_url)
      render json: line_data(@chart.data_url) and return
    else
      redirect_to @chart.data_url and return
    end
  end
end
