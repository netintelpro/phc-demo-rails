class AddStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :anemia_no, :boolean
    add_column :users, :bleeding_yes, :boolean
    add_column :users, :bleeding_no, :boolean
  end
end
