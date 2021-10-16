class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    render json: user
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      render json: user
    else
      render json: user.errors
    end
  end

  private
    def user_params
      params.permit(:name, :email, :height, :birthday, :sex, :training_type, :introduction)
    end
end