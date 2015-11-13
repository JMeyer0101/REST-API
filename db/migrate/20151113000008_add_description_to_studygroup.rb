class AddDescriptionToStudygroup < ActiveRecord::Migration
  def change
    add_column :studygroups, :description, :text
  end
end
