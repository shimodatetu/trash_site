class CreateAddressTrashes < ActiveRecord::Migration[7.0]
  def change
    create_table :address_trashes do |t|
      t.integer :wardplace_id
      t.integer :trash_type_id
      t.integer :trash_id

      t.timestamps
    end
  end
end
