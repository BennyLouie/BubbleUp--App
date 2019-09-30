class TeasController < ApplicationController
  before_action :set_tea, only: [:show, :edit, :update, :destroy]


  def index
    @teas = Tea.all
  end


  def show
  end


  def new
    @tea = Tea.new
  end


  def edit
  end


  def create
    @tea = Tea.new(tea_params)

  end


  def update

  end


  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tea
      @tea = Tea.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tea_params
      params.require(:tea).permit(:name, :price, :img_url, :shop_id)
    end
end
