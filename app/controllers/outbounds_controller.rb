class OutboundsController < ApplicationController
  def index
    @outbounds = Outbound.all
  end

  def new
    @outbound = Outbound.new
  end

  def create
    @outbound = Outbound.create(outbound_params)
    if @outbound.save
      redirect_to outbounds_path
    else
      render 'new'
    end
  end

  def show
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound)
  end

  private
    def outbound_params
      params.require(:outbound).permit(:origin , :destination , :sent_date , :strap , :car , :outbound_number)
    end
end
