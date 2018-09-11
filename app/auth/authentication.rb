class Authentication

  def initialize(user_object)
    email = user_object[:email]
    @password = user_object[:password]
    @user = User.find_by(email: email)
  end

  def authenticate
    true if @user && @user.authenticate(@password)
  end

  def generate_token
    JwtWebToken.encode(user_id: @user.id)
  end
end