class ActionsController < ApplicationController

  def random
    p "GOT YA ACTION PARAMS RIGHT HERE DOOD"
    @action = Action.order("RANDOM()").where(code: params[:actionType]).first
    respond_to do |format|
      format.html
      format.json do
        p "!--RENDERING ACTION IN JSON--!"
        render json: {url: @action.url}
      end
    end
  end

end
