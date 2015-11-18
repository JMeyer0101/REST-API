class CreateGroupComments < ActiveRecord::Migration
  def change
    create_table :group_comments do |t|
      t.integer :studygroup_id
      t.text :comment
      t.string :user

      t.timestamps null: false
    end
  end
end
