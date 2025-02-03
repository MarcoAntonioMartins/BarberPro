class CreateAppointments < ActiveRecord::Migration[7.2]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone
      t.references :service, null: false, foreign_key: true
      t.date :date
      t.string :time

      t.timestamps
    end
  end
end
