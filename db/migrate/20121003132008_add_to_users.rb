class AddToUsers < ActiveRecord::Migration
  def change
    add_column :users, :chest_pain :string
    add_column :users,  :heart_palpitations, :string 
    add_column :users,  :anemia, :string
    add_column :users,  :bleeding_clotting_disorder, :string
    add_column :users,  :blood_clot, :string
    add_column :users,  :blood_clot_where, :string
    add_column :users,  :chest_pain_discomfort, :string
    add_column :users,  :coronary_artery_disease, :string
    add_column :users,  :coronary_bypass, :string
    add_column :users,  :heart_attack, :string
    add_column :users,  :heart_surgery,:string
    add_column :users,  :high_blood_pressure, :string
    add_column :users,  :palpitations, :string
    add_column :stroke,:string
  end
end
