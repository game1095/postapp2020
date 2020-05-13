class PrintsController < ApplicationController
  def show
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound)  
  end
end
