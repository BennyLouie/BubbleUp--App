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

  private
    def set_shop
      @shop = Shop.find(params[:id])
    end

    def shop_params
      params.require(:shop).permit(:name, :location, :address)
    end
end
