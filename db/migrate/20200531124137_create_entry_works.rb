class CreateEntryWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_works do |t|
      t.integer :user_id, null: false
      t.integer :work_id, null: false
      

      t.timestamps
    end
  end
end
