module DataHelper
  def ical_data(url)
    cal_file = open(URI.parse(url)) { |f| f.read }

    cals = Icalendar.parse(cal_file)
    cal = cals.first

    data = []

    cal.events.each do |e|
      date = e.start.to_time.to_i*1000
      desc = e.summary

      data << [date, desc]
    end

    data
  end

  def dummy_cal_data
    [
      [
        5.days.ago.to_time.to_i*1000,
        "Techcrunch write-up"
      ],
      [
        3.days.ago.to_time.to_i*1000,
        "Hired new sales guy"
      ]
    ]
  end
end
