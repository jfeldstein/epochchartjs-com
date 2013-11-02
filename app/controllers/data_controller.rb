class DataController < ApplicationController
  def index

  end 

  def calendar
    data = [
      [
        5.days.ago.to_time.to_i*1000,
        "Techcrunch write-up"
      ],
      [
        3.days.ago.to_time.to_i*1000,
        "Hired new sales guy"
      ]
    ]

    render json: data
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
