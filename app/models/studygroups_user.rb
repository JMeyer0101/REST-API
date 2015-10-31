class StudygroupsUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :studygroup
  
end
