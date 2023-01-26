class CreateTrashexplains < ActiveRecord::Migration[7.0]
  def change
    create_table :trashexplains do |t|
      t.string :explane
      t.integer :ward_place_id
      t.integer :trash_id

      t.timestamps
    end
  end
end
