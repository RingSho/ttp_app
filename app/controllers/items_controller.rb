class ItemsController < ActionController::Base
  def index; end

  def show
    @image_name = "house" + params[:id] + ".jpg"
    render :text => "id = #{params[:id]}"
  end

end