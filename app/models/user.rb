class User < ActiveRecord::Base
  attr_accessible :login_account, :name, :passwd
end
