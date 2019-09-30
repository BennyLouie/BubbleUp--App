class TeasController < ApplicationController
  before_action :set_tea, only: [:show, :edit, :update, :destroy]


  def index
    @teas = Tea.all
  end


  def show
  end



  private
    def set_tea
      @tea = Tea.find(params[:id])
    end

    def tea_params
      params.require(:tea).permit(:name, :price, :img_url, :shop_id)
    end
end
