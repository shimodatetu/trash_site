class CreateWardplaces < ActiveRecord::Migration[7.0]
  def change
    create_table :wardplaces do |t|
      t.string :name
      t.integer :ward_id

      t.timestamps
    end
  end
end
