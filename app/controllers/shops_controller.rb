class ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :edit, :update, :destroy]


  def index
    # if params[:search_term]
    #   @shops = Shop.where(name: params[:search_term])
    #   if @shops == []
    #     @shops = Shop.all
    #   end
    # else
    #   @shops = Shop.all
    # end
    @shops = Shop.where(nil)
    filtering_params(params).each do |key, value|
      @shops = @shops.public_send(key, value) if value.present?
    end
  end


  def show
    
  end


  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.new(shop_params)

  end

  private
    def set_shop
      @shop = Shop.find(params[:id])
    end

    def shop_params
      params.require(:shop).permit(:name, :location, :address)
    end

    def filtering_params(params)
      params.slice(:starts_with, :location)
    end
end
