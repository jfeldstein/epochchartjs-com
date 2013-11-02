class ChartsController < InheritedResources::Base
  def embed
    @chart = Chart.find params[:id]
    render layout: false
  end

  def landing
    # Give this demo chart to the view, 
    # so it can be displayed on the homepage
    @demo_chart = Chart.find 1
    @new_chart = Chart.new
  end

  def howto

  end
end
