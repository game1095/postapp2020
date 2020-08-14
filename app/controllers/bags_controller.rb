class BagsController < ApplicationController

  def index
    @bags = Bag.search(params[:search]).paginate(page: params[:page], per_page: 20).order(created_at: :desc)
  end

  def new
    @bag = Bag.new()
    @outbound = Outbound.find(params[:outbound_id])
    @bag_count = Bag.where(outbound_id: @outbound)
    @last_bag = Bag.where(outbound_id: @outbound).last(1).reverse
  end

  def create
    @outbound = Outbound.find(params[:outbound_id])
    @bag_count = Bag.where(outbound_id: @outbound)
    @last_bag = Bag.where(outbound_id: @outbound).last(1).reverse
    @bag = Bag.find_or_initialize_by(bag_params)
    if @bag.persisted?
        @bag.destroy
        flash[:alert] = "***ถุงถูกลบออกจากระบบแล้ว***"
        redirect_to new_outbound_bag_path
    else
      if @bag.save
        flash[:success] = "ข้อมูลถูกเพิ่มเข้าสู่ระบบแล้ว"
        redirect_to new_outbound_bag_path
      else
        render 'new'
      end
    end
  end

  def show
    @bag = Bag.find(params[:id])
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
      params.require(:bag).permit(:outbound_id , :number )
    end
end
