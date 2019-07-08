class UsersController < ApplicationController

  def profile
    @user = User.find(params[:id])
    if @user
      render json: {
        id: @user.id,
        username: @user.username,
        img_url: @user.img_url,
        zombie: @user.zombie,
        quiz_id: @user.quiz_id,
        location_id: @user.location_id
      }
    else
      render json: {}, status: :not_found
    end
  end

# CLASS END
end
