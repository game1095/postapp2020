class OutboundsController < ApplicationController
  require 'will_paginate/array'
  def index
    @outbounds = Outbound.search(params[:search]).paginate(page: params[:page], per_page: 12).order(created_at: :desc)
  end

  def new
    @outbound = Outbound.new
  end

  def create
    @outbound = Outbound.create(outbound_params)
    if @outbound.save
      flash[:complete] = "ป.58 เลขที่ #{@outbound.outbound_number} ได้ถูกสร้างแล้ว ชื่อผู้สร้าง #{@outbound.name}"
      redirect_to new_outbound_bag_path(@outbound.id)
    else
      render 'new'
    end
  end

  def show
    @outbound = Outbound.find(params[:id])
    # Sort bag number by destination  with model method
    @bags = Bag.where(outbound_id: @outbound).sort_by(&:destination).paginate(page: params[:page], per_page: 20)
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'outbounds/report',
        pdf: 'report',
        page_size: 'A4'
      end
    end
  end

  private
    def outbound_params
      params.require(:outbound).permit(:origin , :destination , :sent_date , :strap , :car , :outbound_number , :name)
    end
end
