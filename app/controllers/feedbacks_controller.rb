class FeedbacksController < ApplicationController
  before_action :set_product
  before_action :set_feedback, only: [:show, :edit, :update, :destroy]

  # GET products/1/feedbacks
  def index
    @feedbacks = @product.feedbacks
  end

  # GET products/1/feedbacks/1
  def show
  end

  # GET products/1/feedbacks/new
  def new
    @feedback = @product.feedbacks.build
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET products/1/feedbacks/1/edit
  def edit
  end

  # POST products/1/feedbacks
  def create
    @feedback = @product.feedbacks.build(feedback_params)
    @feedback.save
    respond_to do |format|
      format.html 
      format.js
    end
  end

  # PUT products/1/feedbacks/1
  def update
    if @feedback.update_attributes(feedback_params)
      redirect_to([@feedback.product, @feedback], notice: 'Feedback was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE products/1/feedbacks/1
  def destroy
    @feedback.destroy

    redirect_to product_feedbacks_url(@product)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:product_id])
    end

    def set_feedback
      @feedback = @product.feedbacks.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feedback_params
      params.require(:feedback).permit(:rating, :comment, :product_id)
    end
end
