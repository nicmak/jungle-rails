class ReviewsController < ApplicationController

before_filter :authorize
  def create

    @review = Review.new(
    description: params[:review][:description],
    rating: params[:review][:rating],
    product_id: params[:product_id],
    user_id: current_user[:id]
    )

    @review.save
    # redirect_to products_path
    redirect_to "/products/#{params[:product_id]}"
  end


  def destroy
   @review = Review.find params[:id]
   @review.destroy
   redirect_to "/products/#{params[:product_id]}" , notice: 'Review deleted'
  end
end
