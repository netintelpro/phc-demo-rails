class CreatePatientSymptoms < ActiveRecord::Migration
  def change
    create_table :patient_symptoms do |t|

      t.string :status

      t.timestamps
    end
  end
end
