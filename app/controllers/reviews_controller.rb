class ReviewsController < ApplicationController
  def create
    @review = Review.new(
    description: params[:review][:description],
    rating: params[:review][:rating],
    user_id: current_user
    )
    byebug
    @review.save
    redirect_to "products/#{params[:product_id]}"

  end


# private

  # def createReview
  #   review = Review.new(
  #   description: params[:description]
  #   )
  # end
end
