class ShopReviewsController < ApplicationController
  before_action :set_shop_review, only: [:show, :edit, :update, :destroy]


  def index
    @shop_reviews = ShopReview.all
  end


  def show
  end


  def new
    # @shop_review = ShopReview.new
  end


  def edit
  end


  def create
    @shop_review = ShopReview.new(shop_review_params)

  end


  def update

  end


  def destroy
    # @shop_review.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_review
      @shop_review = ShopReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_review_params
      params.require(:shop_review).permit(:user_id, :shop_id, :rating, :review)
    end
end
