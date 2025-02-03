class CreateServices < ActiveRecord::Migration[7.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :duration
      t.string :price

      t.timestamps
    end
  end
end
