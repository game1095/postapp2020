class PrintsController < ApplicationController

  # Sort By Destination 
  def show_destination
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound).sort_by(&:destination)
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'outbounds/report',
        pdf: 'report',
        page_size: 'A4'
      end
    end
  end
  # Sort By Origin 
  def show_origin
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound).sort_by(&:origin)
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'outbounds/report',
        pdf: 'report',
        page_size: 'A4'
      end
    end
  end

end
