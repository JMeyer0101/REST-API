class User < ActiveRecord::Base
  has_secure_password
  has_many :studygroups_users, :dependent => :destroy
  has_many :studygroups, :through => :studygroups_users
  validates_uniqueness_of :email
end
