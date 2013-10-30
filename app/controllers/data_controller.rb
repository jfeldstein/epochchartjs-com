class DataController < ApplicationController
  def index

  end 

  def calendar
    data = [
      [
        5.days.ago.to_time.to_i*1000,
        "Techcrunch write-up"
      ]
    ]

    render json: data
  end

  def show
    data = [
      [ 
        7.days.ago.to_time.to_i*1000,
        132
      ],[
        6.days.ago.to_time.to_i*1000,
        112
      ],[
        5.days.ago.to_time.to_i*1000,
        130
      ],[
        4.days.ago.to_time.to_i*1000,
        165
      ],[
        3.days.ago.to_time.to_i*1000,
        140
      ],[
        2.days.ago.to_time.to_i*1000,
        148
      ],[
        1.days.ago.to_time.to_i*1000,
        134
      ]]

    render json: data
  end
end
