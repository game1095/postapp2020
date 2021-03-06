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
        page_size: 'A4',
        viewport_size: '1280x1024'
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
        page_size: 'A4',
        viewport_size: '1280x1024'
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
        page_size: 'A4',
        viewport_size: '1280x1024'
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
        page_size: 'A4',
        viewport_size: '1280x1024'
      end
    end
  end

  # ปริ้นเอกสาร ป.210
  def paper_internal
    @internal = Internal.find(params[:id])
    @parcels = Parcel.where(internal_id: @internal).sort_by(&:created_at)

    respond_to do |format|
      format.pdf do
        render template: 'internals/report',
        pdf: 'report',
        page_size: 'A4',
        viewport_size: '1280x1024'
      end
    end
  end

end
