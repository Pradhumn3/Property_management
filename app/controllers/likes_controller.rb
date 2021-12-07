class LikesController < ApplicationController
    def create
      @like = current_user.likes.create(like_params)
    end
  
    def destroy
      @like = current_user.likes.find_by(property_id: params[:id])
      property = @like.property
      @like.destroy
    end
  
    private
  
    def like_params
      params.require(:like).permit(:user_id, :property_id)
    end
  
end
