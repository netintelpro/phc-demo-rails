class CreatePatientConditions < ActiveRecord::Migration
  def change
    create_table :patient_conditions do |t|
    
      t.string :current
      t.string :past
      t.string :where

      t.timestamps
    end
  end
end
