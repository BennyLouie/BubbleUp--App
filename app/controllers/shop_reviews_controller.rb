class ShopReviewsController < ApplicationController
  before_action :set_shop_review, only: [:show, :edit, :update, :destroy]

  # GET /shop_reviews
  # GET /shop_reviews.json
  def index
    @shop_reviews = ShopReview.all
  end

  # GET /shop_reviews/1
  # GET /shop_reviews/1.json
  def show
  end

  # GET /shop_reviews/new
  def new
    @shop_review = ShopReview.new
  end

  # GET /shop_reviews/1/edit
  def edit
  end

  # POST /shop_reviews
  # POST /shop_reviews.json
  def create
    @shop_review = ShopReview.new(shop_review_params)

    respond_to do |format|
      if @shop_review.save
        format.html { redirect_to @shop_review, notice: 'Shop review was successfully created.' }
        format.json { render :show, status: :created, location: @shop_review }
      else
        format.html { render :new }
        format.json { render json: @shop_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_reviews/1
  # PATCH/PUT /shop_reviews/1.json
  def update
    respond_to do |format|
      if @shop_review.update(shop_review_params)
        format.html { redirect_to @shop_review, notice: 'Shop review was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_review }
      else
        format.html { render :edit }
        format.json { render json: @shop_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_reviews/1
  # DELETE /shop_reviews/1.json
  def destroy
    @shop_review.destroy
    respond_to do |format|
      format.html { redirect_to shop_reviews_url, notice: 'Shop review was successfully destroyed.' }
      format.json { head :no_content }
    end
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
