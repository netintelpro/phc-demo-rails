class AddSystemIdToConditions < ActiveRecord::Migration
  def change
    add_column :conditions, :system_id, :integer
  end
end
