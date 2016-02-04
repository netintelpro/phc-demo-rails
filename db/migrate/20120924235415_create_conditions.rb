class CreateConditions < ActiveRecord::Migration
  belongs_to :system	
  def change
    create_table :conditions do |t|
      t.string :name

      t.timestamps
    end
  end
end
