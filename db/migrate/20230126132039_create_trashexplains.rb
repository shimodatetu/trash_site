class CreateTrashexplains < ActiveRecord::Migration[7.0]
  def change
    create_table :trashexplains do |t|
      t.string :explane
      t.integer :wardplace_id
      t.integer :trash_type_id

      t.timestamps
    end
  end
end
