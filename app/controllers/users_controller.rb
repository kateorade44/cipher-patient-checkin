class UsersController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  def index
    render json: User.all
   end


  private

    def user_params
      params.require(:user).permit(:name, :phone, :email, :insurance_co, :insurance_number, :doctor_id)
    end
end
