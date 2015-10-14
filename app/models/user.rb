class User < ActiveRecord::Base
  has_many :posts
  has_secure_password

  def to_s
    name
  end
end
