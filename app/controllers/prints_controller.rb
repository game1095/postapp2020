class PrintsController < ApplicationController

  # Sort By Destination แบบไม่เปลืองกระดาษ
  def show_destination
    @outbound = Outbound.find(params[:id])
    @bags = Bag.where(outbound_id: @outbound).sort_by(&:destination)
    # bag = bags.each_slice(3).to_a
    # a = [1,2,3,4,5,6,7,8,9,10,12,13]
    # b = a.each_slice(10).to_a
    # b[0].each do |a|
    #   puts ">>>>>>>>>>#{a}"
    # end

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
