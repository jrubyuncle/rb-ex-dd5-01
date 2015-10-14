class User < ActiveRecord::Base
  has_many :posts
  has_secure_password

  def to_s
    name
  end

  protected
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
