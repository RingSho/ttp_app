class ItemsController < ActionController::Base
  def index
    @data = House.all()
  end

  def show
    @image_name = "house" + params[:id] + ".jpg"
    @data = House.find(params[:id].to_i)
    @form = Reservation.new()
    @reservated = Reservation.where(item_id: params[:id])
    render :text => "id = #{params[:id]}"
  end

  def create
    @form = Reservation.new(reservation_params)
    if @form.save
      flash[:notice] = "予約が完了しました。"
      redirect_to "/items"
    else
      flash[:notice] = "予約に失敗しました"
      render '/items'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:start_date, :end_date, :item_id)
  end
end