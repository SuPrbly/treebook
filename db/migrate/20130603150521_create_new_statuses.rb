class CreateNewStatuses < ActiveRecord::Migration
  def change
    create_table :new_statuses do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
