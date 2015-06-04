class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.string :medicine
      t.float :dosage

      t.timestamps null: false
    end
  end
end
