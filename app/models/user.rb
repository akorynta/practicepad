class User < ActiveRecord::Base
  has_secure_password
  validates :log_id, :password, :name, presence: true;
end
