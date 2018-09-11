class GuestsController < ApplicationController
  def index
    authorization_object = Authorization.new(request)
    current_user = authorization_object.current_user

    if current_user
      @guests = Guest.all
      render json: @guests
    else
      render json: { message: 'you are not authorized'}
    end
  end
end
