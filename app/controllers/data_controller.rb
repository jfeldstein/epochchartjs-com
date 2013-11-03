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

    # Eventually, we can do things like pull in data from existing services, like MP or Keen, so 
    # users can build directly on top of their existing analytics stacks, vs having to open
    # their own endpoints. 
    redirect_to @chart.data_url and return
  end
end
