class ReviewsController < ApplicationController
  def create
    @review = Review.new(user_params)
    @review.user_id = current_user.id
    @review.save
    redirect_to product_path(id=@review.product.id) 
  end



def user_params
  params.permit :product_id, :rating, :desription 
end
end