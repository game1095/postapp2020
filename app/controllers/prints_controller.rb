class PrintsController < ApplicationController
  def show
    puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{params[:id]}"
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound)  
  end
end
