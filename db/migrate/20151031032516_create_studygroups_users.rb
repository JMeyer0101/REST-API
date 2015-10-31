class CreateStudygroupsUsers < ActiveRecord::Migration
  def change
    create_table :studygroups_users do |t|
      t.integer :studygroup_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
