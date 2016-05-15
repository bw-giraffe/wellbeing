class StatusesController < ApplicationController

  def random
    p "params for random #{params}"
    @status = Status.order("RANDOM()").where(level: params[:statusLevel]).first
    respond_to do |format|
      format.html
      format.json do
        p "!---RENDERING IN JSON!---"
        render json: {url: @status.url}
      end
    end
  end

end
