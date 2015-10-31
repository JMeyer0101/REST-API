class Studygroup < ActiveRecord::Base
  has_many :studygroups_users, :dependent => :destroy
  has_many :users, :through => :studygroups_users
end
