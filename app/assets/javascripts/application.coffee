require ['jquery', 'highcharts', 'epochchart'], ($) ->

  # Start up the app once the DOM is ready
  $ ->
    $(document).foundation() if $.fn.foundation?

    $('.chart').each ->
      chart = $(@)

      eventsUrl = chart.data('eventsUrl')
      dataUrl = chart.data('dataUrl')
      title = chart.data('title')
      
      $.when($.get(eventsUrl), $.get(dataUrl)).done ->
        events = arguments[0][0]
        data = arguments[1][0]

        lineData = 
          data: data
          name: title
        
        chart.epochchart lineData, events,
          marker: "url(/marker.png)"
