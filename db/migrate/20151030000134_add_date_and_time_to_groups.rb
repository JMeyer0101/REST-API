class AddDateAndTimeToGroups < ActiveRecord::Migration
  def change
    add_column :studygroups, :date, :string
    add_column :studygroups, :time, :string
  end
end
