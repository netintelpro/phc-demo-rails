class AddAnemiaYesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :anemia_yes, :string
  end
end
