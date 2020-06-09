class PrintsController < ApplicationController

  # Sort By Destination แบบไม่เปลืองกระดาษ
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
  # Sort By Origin แบบไม่เปลืองกระดาษ
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

  # Sort by Destination แบบเปลืองกระดาษ
  def paper_show_destination
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound).sort_by(&:destination)
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'outbounds/paper_report',
        pdf: 'report',
        page_size: 'A4'
      end
    end
  end
  # Sort By Origin แบบเปลืองกระดาษ
  def paper_show_origin
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound).sort_by(&:origin)
    respond_to do |format|
      format.html
      format.pdf do
        render template: 'outbounds/paper_report',
        pdf: 'report',
        page_size: 'A4'
      end
    end
  end
  
end
