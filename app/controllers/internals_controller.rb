class InternalsController < ApplicationController
  def index
    @internals = Internal.all.paginate(page: params[:page], per_page: 12).order(created_at: :desc)
  end

  def new
    @internal = Internal.new
  end

  def create
    @internal = Internal.create(internal_params)
    if @internal.save
      flash[:complete] = "ป.210 เลขที่ #{@internal.internal_number} ได้ถูกสร้างแล้ว ชื่อผู้สร้าง #{@internal.name}"
      redirect_to new_internal_parcels_path(@internal.id)
    else
      render 'new'
    end
  end

  def show
    @internal =  Internal.find(params[:id])
    @parcels = Parcel.where(internal_id: @internal).sort_by(&:created_at).paginate(page: params[:page], per_page: 20)
  end
  private
    def internal_params
      params.require(:internal).permit(:origin , :destination , :sent_date  , :internal_number , :name , :remark , :internal_number)
    end

end
