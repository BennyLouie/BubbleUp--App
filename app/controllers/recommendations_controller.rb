class RecommendationsController < ApplicationController
  before_action :set_recommendation, only: [:show, :edit, :update, :destroy]


  def index
    @recommendations = @current_user.recommendations
  end


  def show
  end


  def new
    @recommendation = Recommendation.new
  end

 
  def edit
  end


  def create
    # byebug
    recommendation = Recommendation.create(recommendation_params.merge(user_id: @current_user.id))
    redirect_to recommendations_path
  end


  def update

  end


  def destroy
    # @recommendation.destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recommendation
      @recommendation = Recommendation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recommendation_params
      params.require(:recommendation).permit(:user_id, :tea_id, :comments)
    end
end
