class BagsController < ApplicationController
  def new
    @bag = Bag.new
    @outbound = Outbound.find(params[:outbound_id])
    @bag_count = Bag.where(outbound_id: @outbound)
    @bags = Bag.where(outbound_id: @outbound).last(1).reverse
  end

  def create
    @outbound = Outbound.find(params[:outbound_id])
    @bag = Bag.find_or_initialize_by(bag_params)
    if @bag.persisted?
        @bag.destroy
      redirect_to new_outbound_bag_path
    else
      @bag.save
      redirect_to new_outbound_bag_path
    end
  end

  def destroy
    @bag = Bag.find(params[:id])
    if @bag.destroy
      redirect_to outbound_path(params[:outbound_id])
    else
      render outbound_bags_path
    end
  end

  private
    def bag_params
      params.require(:bag).permit(:outbound_id , :number)
    end
end
