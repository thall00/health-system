class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name

      t.timestamps null: false
    end

    # create_table :appointments do |t|
    #   t.integer :patient_id
    #   t.string :date
    #   t.string :time
    # end

    #add_index :appointments, :patient_id
  end
end
