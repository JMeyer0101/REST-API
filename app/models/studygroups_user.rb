class StudygroupsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :studygroup
  validates_uniqueness_of :studygroup_id, :scope => :user_id
end
