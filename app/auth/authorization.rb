class Authorization
  def initialize(request)
    @token = request.headers[:Authorization]
  end

  def current_user
    JwtWebToken.decode(@token)[:user_id] if @token
  end
end
