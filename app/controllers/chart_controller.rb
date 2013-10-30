class ChartController < InheritedResources::Base
  def embed
    @chart = Chart.find params[:id]
    render layout: false
  end
end
