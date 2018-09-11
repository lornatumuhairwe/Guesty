class UsersController < ApplicationController
  def login
    auth_object = Authentication.new(login_params)

    if auth_object.authenticate
      render json: {
        message: 'Login successful!',
        token: auth_object.generate_token,
        status: :ok
      }
    else
      render json: {
        message: 'Incorrect email or password',
        status: :unauthorized
      }
    end
  end

  private

  def login_params
    params.permit(:email, :password)
  end
end
