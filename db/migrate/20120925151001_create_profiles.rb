class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :street1
      t.string :street1
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone

      t.timestamps
    end
  end
end
