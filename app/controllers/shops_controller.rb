class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]


  def index
    @shops = Shop.all
  end


  def show
  end


  def new
    @shop = Shop.new
  end


  def edit
  end


  def create
    @shop = Shop.new(shop_params)

  end


  def update

  end


  def destroy
    # @shop.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop
      @shop = Shop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_params
      params.require(:shop).permit(:name, :location, :address)
    end
end
