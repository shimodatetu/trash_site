class CreateTrashes < ActiveRecord::Migration[7.0]
  def change
    create_table :trashes do |t|
      t.string :name

      t.timestamps
    end
  end
end
