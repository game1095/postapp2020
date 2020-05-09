class BagsController < ApplicationController
  def new
    @bag = Bag.new
    @outbound = Outbound.find(params[:outbound_id])
  end

  def create
    @outbound = Outbound.find(params[:outbound_id])
    @bag = Bag.create(bag_params)
    if @bag.save
      redirect_to new_outbound_bag_path
    else
      render 'new'
    end

  end

  private
    def bag_params
      params.require(:bag).permit(:outbound_id , :number)
    end
end
