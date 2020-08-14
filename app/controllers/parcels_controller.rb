class ParcelsController < ApplicationController
  def new
    @parcel = Parcel.new()
    @internal = Internal.find(params[:internal_id])
    @parcel_count = Parcel.where(internal_id: @internal)
    @last_parcel = Parcel.where(internal_id: @internal).last(1).reverse
  end

  def create
    @parcel_count = Parcel.where(internal_id: @internal)
    @last_parcel = Parcel.where(internal_id: @internal).last(1).reverse
    @internal = Internal.find(params[:internal_id])
    @parcel = Parcel.find_or_initialize_by(parcel_params)
    if @parcel.persisted?
        @parcel.destroy
        flash[:alert] = "***สิ่งของถูกลบออกจากระบบแล้ว***"
        redirect_to new_internal_parcels_path
    else
        if @parcel.save
          flash[:success] = "ข้อมูลถูกบันทึกแล้ว"
          redirect_to new_internal_parcels_path
        else
          render 'new'
        end
    end
  end
  private
    def parcel_params
      params.require(:parcel).permit(:internal_id , :number )
    end
end
