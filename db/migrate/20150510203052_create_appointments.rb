class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.belongs_to :doctor, index: true
      t.belongs_to :patient, index: true
      t.datetime :appointment_date
      t.timestamps null: false
    end
    # create_table :doctors do |t|
    #   t.string :name
    #   t.timestamps null: false
    # end
 
    # create_table :patients do |t|
    #   t.string :name
    #   t.timestamps null: false
    # end
 
    
  end
end
