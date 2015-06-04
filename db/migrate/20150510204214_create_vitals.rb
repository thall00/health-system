class CreateVitals < ActiveRecord::Migration
  def change
    create_table :vitals do |t|
      t.belongs_to :appointment, index: true
      t.float :pulse
      t.float :bp_systolic
      t.float :bp_diastolic
      t.float :height
      t.float :weight
      t.float :oxygen_level

      t.timestamps null: false
    end
  end
end
