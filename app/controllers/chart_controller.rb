class ChartController < InheritedResources::Base
  def show
    @chart = Chart.find params[:id]
    render layout: false
  end
end
